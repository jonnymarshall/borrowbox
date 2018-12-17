class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true

  def average_review
    calculate_average(item_rating, lender_rating)
  end

  private

  def calculate_average(item_rating, lender_rating)
    ratings_array = [item_rating, lender_rating]
    if both_ratings_nil?
      nil
    elsif any_rating_nil?
      average_with_nils(ratings_array)
    else
      average(ratings_array)
    end
  end

  def both_ratings_nil?
    user.rating.nil? && rating.nil?
  end

  def any_rating_nil?
    user.rating.nil? || rating.nil?
  end

  def average(ratings_array)
    ratings_array.inject(0) { |sum, x| sum + x.to_f } / ratings_array.size
  end

  def average_with_nils(ratings_array)
    clean_ratings = ratings_array.compact
    average(clean_ratings)
  end
end
