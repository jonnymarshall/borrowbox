<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------USER SEEDS----------
 puts 'Creating users...'

 user_attributes = [
  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Av. Dom Carlos i 17-25, 1200-000 Lisboa"
    credits: 2300
    rating: 8.9
  },

{
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "R. da Cintura do Porto de Lisboa, 1200-161 Lisboa"
    credits: 1000
    rating: 6.9
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Rua de S. Paulo 160, 1200-429 Lisboa"
    credits: 1200
    rating: 8.3
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "R. Rodrigues de Faria 103, 1300-501 Lisboa"
    credits: 3000
    rating: 9.6
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Praça do Império 1400-206 Lisboa"
    credits: 2200
    rating: 7.9
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "R. Palma 266, 1100-394 Lisboa"
    credits: 2300
    rating: 7.4
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Alameda dos Oceanos 45 1.03 01, 1990-204 Lisboa"
    credits: 1800
    rating: 7.2
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "R. do Alecrim 19, 1200-292 Lisboa"
    credits: 4000
    rating: 9.2
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Praça do Comércio 84, 1100-148 Lisboa"
    credits: 2700
    rating: 8.5
  },

  {
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    email: "borrow@box.com"
    password: "borrowbox"
    address: "Rua da Boavista 88, 1200-058 Lisboa"
    credits: 2300
    rating: 8.9
  },
 ]

puts "Created #{User.count} users..."

#----------ITEM SEEDS----------
puts 'Creating items...'

item_attributes = [
#DRILLS
  {
    item_name: "Guild Drill Driver "
    photo: "https://unsplash.com/photos/CuDoRFyTkAQ"
    description:"1.3AH Cordless. Request if you dare"
    credits: 220
    rating: 9.0
  },

  {
    item_name: "Makita G-Series Hammer Drill"
    photo:"https://unsplash.com/photos/WRgKwttuP7A"
    description:"Cordless 18V, lovely drill"
    credits: 180
    rating: 8.7
  },

  {
    item_name: "Bosch PBH 2100 RE Corded Drill"
    photo: "https://unsplash.com/photos/McBWND3SIZs"
    description:"brrr brrr brrr"
    credits: 200
    rating: 8.5
  },

  {
    item_name: "WORX Hammer Drill"
    photo:"https://unsplash.com/photos/4sZmaAzPq8M"
    description:"Best fitting for a January Aquarius"
    credits: 190
    rating: 9.7
  },

  {
    item_name: "Einhell 1010W Impact Drill"
    photo: "https://unsplash.com/photos/KxCreC5lwDY"
    description:"No pets allowed"
    credits: 210
    rating: 7.9
  },

#PARTY TENTS
   {
    item_name: "White Party Tent"
    photo: "https://unsplash.com/photos/EP4VrAn-WaY"
    description:"Easy to put up"
    credits: 500
    rating: 8.0
  },

  {
    item_name: "Small Party Tent"
    photo: "https://unsplash.com/photos/5dehYy5BkRw"
    description:"For a very exclusive party"
    credits: 400
    rating: 7.0
  },

  {
    item_name: "Kids Party Tent"
    photo: "https://unsplash.com/photos/EnCaUE4QNOw"
    description:"Colourful and niiice"
    credits: 500
    rating: 8.0
  },

#HAMMERS
  {
    item_name: "Carbon steel Claw Hammer"
    photo: "https://unsplash.com/photos/pVHz7BNe1nA"
    description:"16oz smells nice"
    credits: 50
    rating: 8.0
  },

  {
    item_name: "Magnusson Single Piece Hammer"
    photo: "https://unsplash.com/photos/9hfnGjOUlw0"
    description:"53oz handle with care"
    credits: 120
    rating: 9.0
  },


#RANDOM
  {
    item_name: "My Therapy Gold Fish"
    photo: "https://unsplash.com/photos/IQw2TBeXw9g"
    description:"He's just a very good listener"
    credits: 1000
    rating: 9.9
  },

  {
    item_name: "Skateboard"
    photo: "https://unsplash.com/photos/4_QbgDuj8z4"
    description:"haunted skateboard borrow if you dare"
    credits: 666
    rating: 6.6
  },

  {
    item_name: "Watering Can"
    photo: "https://unsplash.com/photos/rpWmoS-IDVw"
    description:"Pretty and pink"
    credits: 100
    rating: 8.9
  },

  {
    item_name: "Horse Mask"
    photo: "https://unsplash.com/photos/5Fxuo7x-eyg"
    description:":) fun times"
    credits: 200
    rating: 8.3
  },

]
puts "Created #{Item.count} items..."


#----------REVIEWS SEEDS----------
puts 'Creating reviews...'

 user_attributes = [
  {
    title: "Good as new"
    content: "The item was impeccable, exactly what I needed in perfect conditions. The lender was very nice and helping!"
    lender_rating: 8.5
    item_rating: 9.0
  },

  {
    title: "Very happy"
    content: "It was my first time using the service and I'm very happy with how easy and casual the whole thing was, the lender was very nice and helpfull, definitly recommend it to everyone."
    lender_rating: 9.0
    item_rating: 9.0
  },

  {
    title: "Not satisfied"
    content: "The item didn't correspond my expectations, the lender wasn't honest about it's conditions, I will look for another lender next time."
    lender_rating: 5.0
    item_rating: 5.0
  },

  {
    title: "Helpfull!"
    content: "The lender was flexible around my difficult schedule, very quick with the messages and the item was exactly what I needed."
    lender_rating: 10.0
    item_rating: 10.0
  },

  {
    title: "So friendly"
    content: "It's nice how easy it is to get what you need, just like asking for a friend! Both the lender and the item were great!"
    lender_rating: 8.0
    item_rating: 8.0
  },

  {
    title: "Good"
    content: "Standard, easy to communicate and arrange the pick up, item worked fine and the lender was a good person"
    lender_rating: 8.5
    item_rating: 8.9
  },

  {
    title: "Overall a good experience"
    content: "The lender was quick at responding to the messages and the item worked fine"
    lender_rating: 9.0
    item_rating: 7.5
  },

  {
    title: "100% Recommend"
    content: "Happy I didn't have to spend much money at the shop for a one time thing, it was easy to arrange and very convenient"
    lender_rating: 8.5
    item_rating: 8.0
  },

  {
    title: "Great!"
    content: "Will be telling friends and family about the experience, the lender and the item were great"
    lender_rating: 8.5
    item_rating: 8.5
  },

  {
    title: "Very good"
    content: "The item performed as expected, the lender was very easy and helpful"
    lender_rating: 7.0
    item_rating: 7.0
  },

  {
    title: "Awesome"
    content: "So easy to get everything done and definitly way cheaper"
    lender_rating: 9.0
    item_rating: 9.0
  },

  {
    title: "Easy and Familiar"
    content: "The whole process was really easy and familiar, just like asking a mate"
    lender_rating: 8.0
    item_rating: 8.9
  },

  {
    title: "Convenience at it's peak"
    content: "Will definitly start browsing here for most things, the item was in perfect condition and the lender was awesome too"
    lender_rating: 9.5
    item_rating: 9.0
  },

  {
    title: "Okay"
    content: "It was hard to arrange the meeting and work around the lender's schedule but the item was good"
    lender_rating: 6.0
    item_rating: 8.5
  },

  {
    title: "Easy"
    content: "Uncomplicated and advantageous!"
    lender_rating: 9.0
    item_rating: 9.0
  },
]

puts "Created #{Review.count} reviews..."






=======
User.destroy_all
Item.destroy_all
Booking.destroy_all
Review.destroy_all

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
    name: Faker::Commerce.product_name,
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
>>>>>>> 9ea56f7b5449b5d3f851a5331bcc8a5378e9ac1c
