class BookingsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
=======
>>>>>>> 96691c87538e5ce890a509e2cb46c93e86d9138e
=======

>>>>>>> 944cd83a68deba5c92dae8e56fb2f4cf8e2c156d
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.find(params[:id])
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    raise
=======
=======
  end
  
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
=======
  end
  
>>>>>>> 96691c87538e5ce890a509e2cb46c93e86d9138e
=======
  end
  
>>>>>>> 944cd83a68deba5c92dae8e56fb2f4cf8e2c156d
  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status_params)
    redirect_to dashboard_index_path
  end

  private

  def booking_status_params
    params.permit(:status)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 8a37ecb93cf494435d9a51cf7e3857c7e7407fa8
=======
>>>>>>> 240692bc729709accf8b3c2689e0d6adbd3fc98a
=======
>>>>>>> 96691c87538e5ce890a509e2cb46c93e86d9138e
=======
>>>>>>> 944cd83a68deba5c92dae8e56fb2f4cf8e2c156d
  end
end
