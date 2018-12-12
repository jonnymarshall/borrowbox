class BookingsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    credits = item.credits
    booking = Booking.new(booking_new_params)
    booking.user = current_user
    booking.item = item
    booking.total_credits = credits
    booking.save
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

  def booking_new_params
    params.require(:booking).permit(
      :request_message,
      :start_date,
      :end_date,
      :item_id,
      :total_credits
    )
  end
end
