class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    sql_query = []
    sql_query << ':max_credits > credits' if params[:max_credits].present?
    sql_query << ':min_rating <= rating' if params[:min_rating].present?
    sql_query << 'name ILIKE :name' if params[:name].present?
    sql_query = sql_query.join(' AND ')

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
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
    # @item.user.rating = nil
    ratings_array = [@item.user.rating, @item.rating]
    @combined_rating = calculate_average(ratings_array)
  end

  private

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
end
