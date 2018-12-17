class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :credits, presence: true
  # validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  def combined_rating
    ratings_array = [user.rating, rating]
    calculate_average(ratings_array).round(1)
  end

  def display_rating
    rating.round(1).nil? ? "N/A" : rating.round(1)
  end

  private

  def calculate_average(ratings_array)
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
