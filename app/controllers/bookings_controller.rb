class BookingsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    booking = Booking.new(booking_new_params)
    booking_details(booking, item)
    booking.save
    update_user_credits(booking)
    redirect_to dashboard_index_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status_params)
    redirect_to dashboard_index_path
  end

  private

  def booking_status_params
    params.permit(:status, :response_message_read)
  end

  def booking_new_params
    params.require(:booking).permit(
      :request_message,
      :start_date,
      :end_date
    )
  end

  def booking_details(booking, item)
    booking_duration = (booking.end_date - booking.start_date).to_i + 1
    booking.user = current_user
    booking.item = item
    booking.total_credits = item.credits * booking_duration
  end

  def update_user_credits(booking)
    booking.user.credits -= booking.total_credits
    booking.user.save
    booking.item.user.credits += booking.total_credits
    booking.item.user.save
  end
end
