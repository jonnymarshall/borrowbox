titles = [
  "Great drill!",
  "Amazing drill!",
  "Best drill ever",
  "Great drill love it",
  "Last night a drill saved my life",
  "FANTASTIC"
]

addresses = [
  "Rua Sousa Lopes 73, Lisboa",
  "Avenida da Republica 40, Lisboa",
  "Avenida João Crisóstomo 74, Lisboa",
  "Avenida João Crisóstomo 17, Lisboa",
  "Avenida Miguel Bombarda 64, Lisboa",
  "R Irene Lisboa 17, Lisboa",
  "Rua Pé Mouro Armz 52, Lisboa",
  "Avenida República 2, Lisboa",
  "Praça Teófilo Braga 60, Lisboa",
  "Avenida Lago 77, Lisboa",
  "Rua Pé Mouro Armz 59, Lisboa",
  "Avenida Visconde Valmor 61, Lisboa"
]

# Creates users
puts 'Creating users...'

n_users = 10
n_items = 100
n_bookings = n_items * 5

# Creates test user
n_users.times do |user|
  user = User.new(
    email: Faker::Internet.email,
    password: "foobar",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    credits: rand(1000..10000),
    rating: rand(1.0..5.0),
  )
  user.save!
  p "#{user}"
end

puts "Created #{User.count} users..."

# Creates items
puts 'Creating items...'
# names = ["Bill", "Bob", "Fred", "Paco", "Jorge", "Andy", "Sherman"]
n_items.times do
  item = Item.new(
    name: Faker::HarryPotter.spell,
    credits: rand(50..5000),
    description: Faker::GameOfThrones.quote,
    user: User.all.sample,
    address: addresses.sample
  )
  item.save!
  p "#{item}"
end

puts "Created #{Item.count} items..."


# Creates 100 bookings with reviews
puts 'Creating bookings...'

n_bookings.times do |booking|
  booking = Booking.new(
    start_date: 20181201,
    end_date: 20181202,
    user: User.all.sample,
    item: Item.all.sample,
    status: rand(0..2)
  )
  booking.save!
  p "#{booking}"

  review = Review.new(
    title: titles.sample,
    content: "#{Faker::Hipster.paragraph}, #{Faker::Hipster.paragraph}, #{Faker::Hipster.paragraph}",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: booking
    )
  review.save!
  p "#{review}"
end


puts "Created #{Booking.count} bookings..."
