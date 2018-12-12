class DashboardController < ApplicationController
  def index
    @user_bookings = Booking.all.where(item_id.user == current_user.id).count
  end
end
