class DashboardController < ApplicationController
  def index
    @review = Review.new
    @item = Item.new
  end

  def show
  end

  def create
  end

  def dashboard
  end
end
