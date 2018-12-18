class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :credits, presence: true

  mount_uploader :photo, PhotoUploader

  def average_rating
    sql_query = "SELECT AVG(reviews.lender_rating) FROM reviews "\
      "JOIN items ON items.user_id = #{id} "\
      "JOIN bookings ON bookings.item_id = items.id "\
      "WHERE reviews.booking_id = bookings.id"

    User.find_by_sql(sql_query)[0].avg
  end
end
