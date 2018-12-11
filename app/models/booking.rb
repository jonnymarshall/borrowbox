class Booking < ApplicationRecord
  belongs_to :item
  has_one :review
end
