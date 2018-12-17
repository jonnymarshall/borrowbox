class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items =
      if sql_query.blank?
        Item.all
      else
        Item.where(sql_query,
                   max_credits: params[:max_credits],
                   min_rating: params[:min_rating],
                   name: "%#{params[:name]}%")
      end
    @items = @items.near(params[:address]) if params[:address].present?

    # Mapbox logic
    @items = @items.where.not(latitude: nil, longitude: nil)

    @markers = @items.map do |item|
      {
        lng: item.longitude,
        lat: item.latitude,
        infoWindow: { content: render_to_string(partial: "/items/map_window", locals: { item: item }) }
      }
    end
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
    ratings_array = [@item.user.rating, @item.rating]
    @combined_rating = calculate_average(ratings_array)

    items = [@item]
    # Mapbox logic
    # @item = @item.where.not(latitude: nil, longitude: nil)

    @markers = items.map do |item|
      {
        lng: item.longitude,
        lat: item.latitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { item: item }) }
      }
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to dashboard_index_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :address, :credits, :photo)
  end

  def calculate_average(ratings_array)
    if both_ratings_nil?
      nil
    elsif any_rating_nil?
      average_with_nils(ratings_array)
    else
      average(ratings_array)
    end
  end

  def both_ratings_nil?
    @item.user.rating.nil? && @item.rating.nil?
  end

  def any_rating_nil?
    @item.user.rating.nil? || @item.rating.nil?
  end

  def average(ratings_array)
    ratings_array.inject(0) { |sum, x| sum + x.to_f } / ratings_array.size
  end

  def average_with_nils(ratings_array)
    clean_ratings = ratings_array.compact
    average(clean_ratings)
  end

  def sql_query
    query = []
    query << ':max_credits > credits' if params[:max_credits].present?
    query << ':min_rating <= rating' if params[:min_rating].present?
    query << 'name ILIKE :name' if params[:name].present?
    query.join(' AND ')
  end
end
