class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def search
    # raise

    @items = Item.where('? > credits', params[:max_credits])

    # if params[:query].present?
    #
    #   @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @movies = Movie.all
    # end

    # credits = Item.where(params[:max_credits])
    # address = Item.wher(params[:address])



    # @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    # @movies = Movie.where(title: params[:query])
  end

  def show
    @item = Item.find(params[:id])
  end
end
