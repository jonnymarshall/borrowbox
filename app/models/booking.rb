class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  has_one :review

  enum status: [:requested, :borrowing, :borrowed]

  validates :user, presence: true
  validates :item, presence: true
  validates :status, presence: true
  validates :total_credits, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :start_date, presence: true, on_or_before: lambda { Date.current }
  validates :end_date, presence: true#, date: { after_or_equal_to: :start_date }
end
