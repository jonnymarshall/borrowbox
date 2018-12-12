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
  "Avenida Joao Crisostomo 74, Lisboa",
  "Avenida Joao Crisostomo 17, Lisboa",
  "Avenida Miguel Bombarda 64, Lisboa",
  "Rua Irene Lisboa 17, Lisboa",
  "Rua Pe Mouro Armz 52, Lisboa",
  "Avenida Republica 2, Lisboa",
  "Praca Teofilo Braga 60, Lisboa",
  "Avenida Lago 77, Lisboa",
  "Avenida Visconde Valmor 61, Lisboa",
  "Rua dos caminhos de ferro 84, Lisboa",
  "Travessa Nova de Sao Domingos 10, Lisboa",
  "Rua do Duque 9, Lisboa",
  "Rua Vitor Cordon 26, Lisboa",
  "Rua da Alegria 101, Porto",
  "Rua de Miguel Bombarda 452, Porto",
  "Rua de Miragaia 106, Porto",
  "Terreiro da Se, Porto"
]

n_users = 10
n_items = 50
n_bookings = n_items * 5

# Creates test user

puts 'Creating test user...'
user = User.new(
  email: "borrow@box.com",
  password: "borrowbox",
  first_name: "Borrow",
  last_name: "Box",
  credits: rand(1000..10000),
  rating: rand(1.0..5.0),
)
user.save!
p "#{user}"


# Creates users
puts 'Creating non-testusers...'

non_test_users = []

# Creates test user
10.times do |user|
  user = User.new(
    email: Faker::Internet.email,
    password: "foobar",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    credits: rand(1000..10000),
    rating: rand(1.0..5.0),
  )
  user.save!
  non_test_users << user
  p "#{user}"
end

puts "Created #{User.count} non-test users..."

# Creates items
puts 'Creating items...'
# names = ["Bill", "Bob", "Fred", "Paco", "Jorge", "Andy", "Sherman"]
n_items.times do
  item = Item.create(
    name: Faker::HarryPotter.spell,
    credits: rand(50..5000),
    description: Faker::GameOfThrones.quote,
    user: User.all.sample,
    address: addresses.sample,
    rating: rand(1.0..5.0)
  )
  p "#{item}"
end

puts "Created #{Item.count} items..."


# Creates 10 bookings for test user

puts 'Creating bookings for test user...'

boolean = ["true", "false"]

10.times do |booking|
  count = 0
  booking = Booking.new(
    start_date: 20181201 + count,
    end_date: 20181202 + count,
    user: User.first,
    item: Item.all.sample,
    status: rand(0..2),
    request_message: "I wanna borrow yo shit",
    response_message: "You can borrow my shit",
    response_message_read: boolean.sample
  )
  booking.save!
  count += 1
  p "#{booking}"
end

puts "Created #{Booking.count} bookings for test user..."


# Creates 100 bookings with reviews
puts 'Creating bookings and reviews...'

n_bookings.times do |booking|
  booking = Booking.new(
    start_date: 20181201,
    end_date: 20181202,
    user: non_test_users.sample,
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
