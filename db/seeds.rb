puts 'Cleaning database...'

User.destroy_all
Item.destroy_all
Review.destroy_all
Booking.destroy_all

# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating users...'
users_attributes = [
  {
    first_name: "Jonny",
    last_name: "Marshall",
    email: "jmborrow@box.com",
    password: "jborrowbox",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/jonnymarshall"
  },

  {
    first_name: "Daniel",
    last_name: "Moreira",
    email: "dmborrow@box.com",
    password: "dborrowbox",
    credits: 1000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/dfmore"
  },

  {
    first_name: "Ines",
    last_name: "Salgueiro",
    email: "isborrow@box.com",
    password: "iborrowbox",
    credits: 1200,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/ineslgrc"
  },

  {
    first_name: "Carlotta",
    last_name: "Schaffner",
    email: "csborrow@box.com",
    password: "cborrowbox",
    credits: 3000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/carlottaschaffner"
  },

  {
    first_name: "Sheldon",
    last_name: "Gatwick",
    email: "16borrow@box.com",
    password: "borrowbox16",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/welan125"
  },

  {
    first_name: "John",
    last_name: "Wood",
    email: "15borrow@box.com",
    password: "borrowbox15",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/Bitais"
  },

  {
    first_name: "Theresa",
    last_name: "White",
    email: "14borrow@box.com",
    password: "borrowbox14",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/UpClelia"
  },

  {
    first_name: "Charlotte",
    last_name: "Glass",
    email: "1borrow@box.com",
    password: "borrowbox1",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/carolinalemos"
  },

  {
    first_name: "Adam",
    last_name: "Brunswick",
    email: "2borrow@box.com",
    password: "borrowbox2",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/sisserian"
  },

  {
    first_name: "Daphne",
    last_name: "Sadick",
    email: "3borrow@box.com",
    password: "borrowbox3",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/Allenah"
  },

  {
    first_name: "Evelyn",
    last_name: "Wentzel",
    email: "4borrow@box.com",
    password: "borrowbox4",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/matbrg"
  },

  {
    first_name: "Fabian",
    last_name: "Pascal",
    email: "5borrow@box.com",
    password: "borrowbox5",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/pbusby"
  },

  {
    first_name: "Joao",
    last_name: "Ramirez",
    email: "6borrow@box.com",
    password: "borrowbox6",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/MaxxxxaM"
  },

  {
    first_name: "Patrick",
    last_name: "Fernandez",
    email: "7borrow@box.com",
    password: "borrowbox7",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/BeNeinDias"
  },

  {
    first_name: "Filipe",
    last_name: "Burihan",
    email: "8borrow@box.com",
    password: "borrowbox8",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/mlrcbsousa"
  },

  {
    first_name: "Johanna",
    last_name: "Schröder",
    email: "13borrow@box.com",
    password: "borrowbox13",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/jamirene88"
  },

  {
    first_name: "Leonard",
    last_name: "Amalfi",
    email: "9borrow@box.com",
    password: "borrowbox9",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/BenDu89"
  },

  {
    first_name: "Caspar",
    last_name: "Sörensen",
    email: "10borrow@box.com",
    password: "borrowbox10",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/tsingell"
  },

  {
    first_name: "Franz",
    last_name: "Müller",
    email: "11borrow@box.com",
    password: "borrowbox11",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/code-hound"
  },

  {
    first_name: "Chris",
    last_name: "Marin",
    email: "12borrow@box.com",
    password: "borrowbox12",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/robstaa"
  },
 ]

User.create!(users_attributes)
puts "Created #{User.count} users..."


#----------ITEM SEEDS----------
puts 'Creating items...'

path = "pinned-places.json"
json_serialized = open(path).read
json = JSON.parse(json_serialized)
coordinates = []
json["features"].each do |feature|
  coordinates << feature["geometry"]["coordinates"]
end


items_attributes = [
#DRILLS
  {
    name: "Guild Drill Driver ",
    description: "1.3AH Cordless. Request if you are already used to speed drills.",
    user: User.all.sample,
    credits: 20,
    photo_fake: "https://images.unsplash.com/photo-1541474424879-14480b8e249d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Makita G-Series Drill",
    description: "Cordless 18V, lovely drill, I have been using this mainly for wood",
    user: User.all.sample,
    credits: 80,
    photo_fake:"https://images.unsplash.com/photo-1540104539488-92a51bbc0410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Bosch PBH 2100 RE",
    description: "brrr brrr brrr",
    user: User.all.sample,
    credits: 25,
    photo_fake: "https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "WORX Hammer Drill",
    description: "Best fitting for projects with light metal as it comes with special tools for that.",
    user: User.all.sample,
    credits: 90,
    photo_fake:"https://images.unsplash.com/photo-1518709414768-a88981a4515d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Einhell 1010W Drill",
    description: "No pets allowed",
    user: User.all.sample,
    credits: 210,
    photo_fake: "https://images.unsplash.com/photo-1531984557360-89184e00f590?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

#PARTY TENTS
   {
    name: "White Party Tent",
    description: "Easy to put up, party approved! Fits chairs for 20 people easily",
    user: User.all.sample,
    credits: 500,
    photo_fake: "https://images.unsplash.com/photo-1478827536114-da961b7f86d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Small Party Tent",
    description: "For a very exclusive party",
    user: User.all.sample,
    credits: 400,
    photo_fake: "https://images.unsplash.com/photo-1479244209311-71e35c910f59?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Kids Party Tent",
    description: "Colourful and nice, perfect for childrens birthday parties!",
    user: User.all.sample,
    credits: 500,
    photo_fake: "https://images.unsplash.com/photo-1496080174650-637e3f22fa03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

#HAMMERS
  {
    name: "Carbon Claw Hammer",
    description: "16oz smells nice",
    user: User.all.sample,
    credits: 50,
    photo_fake: "https://images.unsplash.com/photo-1526714719019-b3032b5b5aac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Magnusson Single Piece",
    description: "53oz handle with care",
    user: User.all.sample,
    credits: 20,
    photo_fake: "https://images.unsplash.com/photo-1542583633-aa0b0e378e2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },


#VACUUM CLEANERS
  {
    name: "Vac 3000",
    description: "Powerful cleaner, comes with empty vacuum bags and different vacuum tools.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 135,
    photo_fake: "https://images.pexels.com/photos/38325/vacuum-cleaner-carpet-cleaner-housework-housekeeping-38325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },


#SUITCASES
  {
    name: "Suitcase",
    description: "Large suitcase, fits 30kg",
    user: User.all.sample,
    credits: 135,
    photo_fake: "https://unsplash.com/photos/5dehYy5BkRw"
  },


#LAWN MOWERS
  {
    name: "Lawn Mower 2000",
    description: "Very good and sustainable lawn mower.",
    user: User.all.sample,
    credits: 135,
    photo_fake: "https://unsplash.com/photos/5dehYy5BkRw"
  },


#STEREO BOXES
  {
    name: "Panasonic Stereo Boxes",
    description: "Very loud and powerful boxes, can easily be paired with other DJ equipment.",
    user: User.all.sample,
    credits: 135,
    photo_fake: "https://unsplash.com/photos/5dehYy5BkRw"
  },

]

Item.create!(items_attributes)
puts "Created #{Item.count} items..."

puts "Putting items in their places..."

Item.all.each do |item|
  fake_coordinates = coordinates.sample
  item[:latitude] = fake_coordinates[1]
  item[:longitude] = fake_coordinates[0]
  item.save
end

puts "Created latitude and longitude for items..."


puts "Creating bookings..."
n_bookings = users_attributes.count * 4

m_request = ["I wanna borrow this"]
m_response = ["You can borrow this"]

n_bookings.times do |booking|
  count = 0
  booking = Booking.new(
    start_date: 20181201 + count,
    end_date: 20181202 + count,
    user: User.all.sample,
    item: Item.all.sample,
    status: rand(0..2),
    request_message: m_request.sample,
    response_message: m_response.sample
  )
  booking.save!
  count += 1
end
puts "Created #{Booking.count} bookings..."

#----------REVIEWS SEEDS----------
puts 'Creating reviews...'

 reviews_attributes = [
  {
    title: "Good as new",
    content: "The item was impeccable, exactly what I needed in perfect conditions. The lender was very nice and helping!",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Very happy",
    content: "It was my first time using the service and I'm very happy with how easy and casual the whole thing was, the lender was very nice and helpfull, definitly recommend it to everyone.",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Not satisfied",
    content: "The item didn't correspond my expectations, the lender wasn't honest about it's conditions, I will look for another lender next time.",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Helpfull!",
    content: "The lender was flexible around my difficult schedule, very quick with the messages and the item was exactly what I needed.",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "So friendly",
    content: "It's nice how easy it is to get what you need, just like asking for a friend! Both the lender and the item were great!",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Good",
    content: "Standard, easy to communicate and arrange the pick up, item worked fine and the lender was a good person",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Overall a good experience",
    content: "The lender was quick at responding to the messages and the item worked fine",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "100% Recommend",
    content: "Happy I didn't have to spend much money at the shop for a one time thing, it was easy to arrange and very convenient",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Great!",
    content: "Will be telling friends and family about the experience, the lender and the item were great",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Very good",
    content: "The item performed as expected, the lender was very easy and helpful",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Awesome",
    content: "So easy to get everything done and definitly way cheaper",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Easy and Familiar",
    content: "The whole process was really easy and familiar, just like asking a mate",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Convenience at it's peak",
    content: "Will definitly start browsing here for most things, the item was in perfect condition and the lender was awesome too",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Okay",
    content: "It was hard to arrange the meeting and work around the lender's schedule but the item was good",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },

  {
    title: "Easy",
    content: "Uncomplicated and advantageous!",
    item_rating: rand(3..5),
    lender_rating: rand(3..5),
    booking: Booking.all.sample
  },
]

Review.create!(reviews_attributes)
puts "Created #{Review.count} reviews..."



