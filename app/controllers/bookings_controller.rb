class BookingsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.find(params[:id])
<<<<<<< HEAD
    raise
=======
=======
  end
  
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status_params)
    redirect_to dashboard_index_path
  end

  private

  def booking_status_params
    params.permit(:status)
<<<<<<< HEAD
>>>>>>> 8a37ecb93cf494435d9a51cf7e3857c7e7407fa8
=======
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
  end
end
