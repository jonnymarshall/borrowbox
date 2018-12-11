class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :credits, presence: true
end