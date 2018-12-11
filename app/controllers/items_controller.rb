class ItemsController < ApplicationController

  def index
    @items = Item.all

    # This will work with two queries
    @items = @items.where('? > credits', params[:max_credits]) if params[:max_credits].present?
    @items = @items.near(params[:address]) if params[:address].present?
  end

  def show
    @item = Item.find(params[:id])
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
