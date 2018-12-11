class ItemsController < ApplicationController

  def index
    @items = Item.all
    # @items = @items.near(params[:location]) if params[:location].present?
  end

  def search

    # @items = Item.where('? > credits', params[:max_credits])

    sql_query = "user.address ILIKE :address"
    # @items = Item.where(sql_query, "%#{params[:address]}%")
    @items = Item.joins(:user).where(sql_query, address: "%#{params[:address]}%")
    raise

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
