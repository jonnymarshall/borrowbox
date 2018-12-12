class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    item = Item.find(item_)
    @booking = Booking.find(params[:id])
    redirect_to item_path(item)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status_params)
    redirect_to dashboard_index_path
  end

  private

  def booking_status_params
    params.permit(:status)
  end
end
