Review.destroy_all
Booking.destroy_all
Item.destroy_all
User.destroy_all

# Bunch of realistic locations
path = "pinned-places.json"
json_serialized = open(path).read
json = JSON.parse(json_serialized)

coordinates = []

json["features"].each do |feature|
  coordinates << feature["geometry"]["coordinates"]
end

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

photos = [
  "https://images.unsplash.com/photo-1541474424879-14480b8e249d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1526714719019-b3032b5b5aac?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1518709414768-a88981a4515d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1541474424879-14480b8e249d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1540104539488-92a51bbc0410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1531984557360-89184e00f590?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1478827536114-da961b7f86d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1479244209311-71e35c910f59?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1496080174650-637e3f22fa03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=8006&q=80",
  "https://images.unsplash.com/photo-1526714719019-b3032b5b5aac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1542583633-aa0b0e378e2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1509016068623-286b408eb841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1466074395296-41cba23ce4f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1466074395296-41cba23ce4f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1518436935151-68b514fa58f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
]

avatars = [
  "http://kitt.lewagon.com/placeholder/users/ssaunier",
  "http://kitt.lewagon.com/placeholder/users/carlottaschaffner",
  "http://kitt.lewagon.com/placeholder/users/jonnymarshall",
  "http://kitt.lewagon.com/placeholder/users/dfmore",
  "http://kitt.lewagon.com/placeholder/users/ineslgrc",
  "http://kitt.lewagon.com/placeholder/users/robstaa",
  "http://kitt.lewagon.com/placeholder/users/papillard",
  "http://kitt.lewagon.com/placeholder/users/code-hound",
  "http://kitt.lewagon.com/placeholder/users/tsingell",
  "http://kitt.lewagon.com/placeholder/users/MaxxxxaM",
  "http://kitt.lewagon.com/placeholder/users/BenDu89",
  "http://kitt.lewagon.com/placeholder/users/jamirene88",
  "http://kitt.lewagon.com/placeholder/users/mlrcbsousa",
  "http://kitt.lewagon.com/placeholder/users/BeNeinDias",
  "http://kitt.lewagon.com/placeholder/users/pbusby",
  "http://kitt.lewagon.com/placeholder/users/sisserian",
]

n_users = 10
n_items = 250
n_bookings = n_items * 4

# Creates test user

puts 'Creating test user...'
user = User.new(
  email: "borrow@box.com",
  password: "borrowbox",
  first_name: "Borrow",
  last_name: "Box",
  credits: rand(1000..10000),
  # rating: rand(3.0..5.0),
  photo_fake: "http://kitt.lewagon.com/placeholder/users/dfmore"
)
user.save!
p "#{user}"

puts 'Created test user...'

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
    # rating: rand(1.0..5.0),
    photo_fake: avatars.sample
  )
  user.save!
  non_test_users << user
  p "#{user}"
end

puts "Created #{User.count} non-test users..."

# Creates items
puts 'Creating items...'
n_items.times do
  fake_coordinates = coordinates.sample
  fake_item_array = Faker::Commerce.product_name.split(/\W+/)
  item = Item.create(
    name: "#{fake_item_array[1]} #{fake_item_array[2]}",
    credits: rand(50..5000),
    description: Faker::GameOfThrones.quote,
    user: User.all.sample,
    # address: addresses.sample,
    rating: rand(1.0..5.0),
    photo_fake: photos.sample,
    latitude: fake_coordinates[1],
    longitude: fake_coordinates[0]
  )
  # item.remote_photo_url = photos.sample
  item.save!
  p "#{item.name}"
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
