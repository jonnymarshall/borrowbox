class BookingsController < ApplicationController
<<<<<<< HEAD
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.find(params[:id])
    raise
=======
  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status_params)
    redirect_to dashboard_index_path
  end

  private

  def booking_status_params
    params.permit(:status)
>>>>>>> 8a37ecb93cf494435d9a51cf7e3857c7e7407fa8
  end
end
