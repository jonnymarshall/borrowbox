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
    if params[:max_distance].present?
      @items = @items.near(params[:coordinates], params[:max_distance])
    elsif params[:address].present?
      @items = @items.near(params[:address])
    end
    # Mapbox
    @items = @items.where.not(latitude: nil, longitude: nil)
    @markers = markers(@items)
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
    # Mapbox
    @markers = markers([@item])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.photo.present?
      @item.save
      redirect_to item_path(@item)
    else
      redirect_to dashboard_index_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to dashboard_index_path
  end

  private

  def sql_query
    query = []
    query << ':max_credits > credits' if params[:max_credits].present?
    query << ':min_rating <= comb_rating' if params[:min_rating].present?
    query << 'name ILIKE :name' if params[:name].present?
    query.join(' AND ')
  end

  def markers(items)
    items.map do |item|
      {
        lng: item.longitude,
        lat: item.latitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { item: item }) }
      }
    end
  end

  def item_params
    params.require(:item).permit(:name, :description, :address, :credits, :photo)
  end
end
