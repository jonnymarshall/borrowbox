class ReviewsController < ApplicationController
  def create
    review = Review.new(review_params)
    review.booking_id = booking_params[:booking_id].to_i
    if review.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :item_rating, :lender_rating)
  end

  def booking_params
    params.permit(:booking_id)
  end
end
