class ItemsController < ApplicationController

  def index
    @items = Item.all

    # This will work with two queries
    @items = @items.where('? > credits', params[:max_credits]) if params[:max_credits].present?
    @items = @items.near(params[:address]) if params[:address].present?
  end

  def show
    @item = Item.find(params[:id])
  end
end
