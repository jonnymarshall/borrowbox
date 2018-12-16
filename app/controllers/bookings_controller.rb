class BookingsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    credits = item.credits
    booking = Booking.new(booking_new_params)
    booking.user = current_user
    booking.item = item

    first_day = booking.start_date.to_s(:number).to_i
    last_day = booking.end_date.to_s(:number).to_i
    booking_duration = last_day - first_day + 1

    booking.total_credits = credits * booking_duration
    booking.save
    booking.user.credits -= booking.total_credits
    booking.user.save

    booking.item.user.credits += booking.total_credits
    booking.item.user.save
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
    params.permit(
      :request_message,
      :start_date,
      :end_date,
      :item_id,
      :total_credits
    )
  end


end
