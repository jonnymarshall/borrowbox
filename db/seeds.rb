#----------CLEAN DB----------
puts 'Cleaning database...'

Review.destroy_all
Booking.destroy_all
Item.destroy_all
User.destroy_all

#----------USER SEEDS----------
puts 'Creating users...'
require_relative "auxilliary/users"

User.create!(@users)
puts "Created #{User.count} users..."

#----------LOCATION SEEDS----------
pinned_places = "db/auxilliary/pinned-places.json"
json_serialized = open(pinned_places).read
json = JSON.parse(json_serialized)
coordinates = []
json["features"].each do |feature|
  coordinates << feature["geometry"]["coordinates"]
end

#----------ITEM SEEDS----------
puts 'Creating items...'
require_relative "auxilliary/items"

Item.create!(@items)
puts "Created #{Item.count} items..."

puts "Putting items in their places..."

Item.all.each do |item|
  fake_coordinates = coordinates.sample
  item[:latitude] = fake_coordinates[1]
  item[:longitude] = fake_coordinates[0]
  item.save
end

puts "Created latitude and longitude for items..."

#----------BOOKING SEEDS----------
puts "Creating bookings..."
n_bookings = @users.count * 4

m_request = ["Hey I'd really like to borrow this item. Would tomorrow be okay?",
  "Hi there! Would it be ok if I borrow this tomorrow am?",
  "Hi there. Just checking this item is definitely available? If so could I grab it at 9?",
  "Hi there. Would love to borrow this item just for a day please! Would 7 be ok?"
]

m_response = ["Of course you can borrow it, see you then!",
  "Sure you can. I'll be there to hand it over :)",
  "Of course no problem at all. Look forward to meeting you.",
  "Hi there. It is available and yes you can borrow it. See you soon!",
  "Absolutely, no problem. See you then :)!"
]

n_bookings.times do
  random_integer = rand(5..40)
  booking = Booking.new(
    start_date: Date.today + random_integer,
    end_date: Date.today + random_integer + rand(1..3),
    user: User.all.sample,
    item: Item.all.sample,
    status: rand(0..2),
    request_message: m_request.sample,
    response_message: m_response.sample,
    response_message_read: true
  )
  booking.save!
end
puts "Created #{Booking.count} bookings..."

#----------REVIEWS SEEDS----------
puts 'Creating reviews...'
require_relative "auxilliary/reviews"

n_reviews = n_bookings * 3

n_reviews.times do
  attribute = @reviews.sample
  review = Review.new(
    title: attribute[:title],
    content: attribute[:content],
    item_rating: attribute[:item_rating],
    booking: Booking.all.sample,
    lender_rating: rand(3..5)
  )
  review.save
end

puts "Created #{Review.count} reviews..."
