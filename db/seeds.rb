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
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/dfmore"
  },

  {
    first_name: "Ines",
    last_name: "Salgueiro",
    email: "isborrow@box.com",
    password: "iborrowbox",
    credits: 10000,
    photo_fake: "http://kitt.lewagon.com/placeholder/users/ineslgrc"
  },

  {
    first_name: "Carlotta",
    last_name: "Schaffner",
    email: "csborrow@box.com",
    password: "cborrowbox",
    credits: 10000,
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
    credits: 250,
    photo_fake: "https://images.unsplash.com/photo-1541474424879-14480b8e249d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Makita G-Series Drill",
    description: "Cordless 18V, lovely drill, I have been using this mainly for wood",
    user: User.all.sample,
    credits: 230,
    photo_fake:"https://images.unsplash.com/photo-1540104539488-92a51bbc0410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Bosch PBH 2100 RE",
    description: "brrr brrr brrr",
    user: User.all.sample,
    credits: 200,
    photo_fake: "https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "WORX Hammer Drill",
    description: "Best fitting for projects with light metal as it comes with special tools for that.",
    user: User.all.sample,
    credits: 260,
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
    credits: 490,
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
    name: "Single Piece Hammer",
    description: "53oz handle with care",
    user: User.all.sample,
    credits: 50,
    photo_fake: "https://images.unsplash.com/photo-1542583633-aa0b0e378e2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },


#VACUUM CLEANERS
  {
    name: "Vacuum 3000 Wireless",
    description: "Powerful cleaner, comes with empty bags and different tools.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 500,
    photo_fake: "https://images.pexels.com/photos/38325/vacuum-cleaner-carpet-cleaner-housework-housekeeping-38325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },

  {
    name: "Electric Vacuum",
    description: "Quiet and pet friendly, comes with empty vacuum bags and different vacuum tools.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 450,
    photo_fake: "https://images.unsplash.com/photo-1527515673510-8aa78ce21f9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Vacuum",
    description: "Includes the original accessories.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 480,
    photo_fake: "https://images.unsplash.com/photo-1527515637462-cff94eecc1ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
  },

  {
    name: "Vacuum Cleaner",
    description: "Comes with accessories.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 500,
    photo_fake: "https://images.pexels.com/photos/844874/pexels-photo-844874.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },

{
    name: "Electric Vacuum",
    description: "Quiet vacuum, comes with it's accessories.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 460,
    photo_fake: "https://images.pexels.com/photos/38325/vacuum-cleaner-carpet-cleaner-housework-housekeeping-38325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },

{
    name: "Vacuum Breeze",
    description: "Bagless Cylinder Vacuum Cleaner, [BR71BR01].",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 450,
    photo_fake: "https://cdn.pixabay.com/photo/2014/02/17/14/28/vacuum-cleaner-268179__340.jpg"
  },

{
    name: "Vacuum Freedom",
    description: "2in1 Pets Cordless Stick Vacuum Cleaner, Powerful, Titanium.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 560,
    photo_fake: "https://cdn.pixabay.com/photo/2014/02/17/14/03/vacuum-cleaner-268161__340.jpg"
  },

  {
    name: "Motorised Vacuum",
    description: "Comes with brush head, powerful.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 520,
    photo_fake: "https://cdn.pixabay.com/photo/2018/10/31/16/30/robot-vacuum-cleaner-3786243__340.jpg"
  },

{
    name: "Vaporised Vacuum",
    description: "Gets rid of stains, deep cleaner.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 460,
    photo_fake: "https://cdn.pixabay.com/photo/2014/07/01/10/48/cleaning-381089__340.jpg"
  },

  {
    name: "Upright NEW Vaccuum",
    description: "BH51120PTV Vacuum Cleaner 20V Air Cordless Lift.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 400,
    photo_fake: "https://cdn.pixabay.com/photo/2014/07/01/10/48/cleaning-381090__340.jpg"
  },

  {
    name: "Modern Vacuum Cleaner",
    description: "Cordless and Quiet.",
    user: User.all.sample,
    # address: "Rua da Moeda 1, Lisbon",
    credits: 410,
    photo_fake: "https://image.shutterstock.com/image-photo/closeup-vacuum-cleaner-over-grey-260nw-1068478943.jpg"
  },


#SUITCASES
  {
    name: "Spacey Suitcase",
    description: "Large suitcase, fits 30kg",
    user: User.all.sample,
    credits: 250,
    photo_fake: "https://images.unsplash.com/photo-1515622472995-1a06094d2224?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  },

  {
    name: "Suitcase",
    description: "Standard suitcase, usually allowed in the cabin",
    user: User.all.sample,
    credits: 220,
    photo_fake: "https://images.unsplash.com/photo-1502301197179-65228ab57f78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "New Suitcase",
    description: "Perfect condtions, roomy",
    user: User.all.sample,
    credits: 240,
    photo_fake: "https://images.unsplash.com/photo-1525103504173-8dc1582c7430?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Standard Suitcase",
    description: "This suitcase has served me for years! Quite good",
    user: User.all.sample,
    credits: 230,
    photo_fake: "https://images.unsplash.com/photo-1534534573898-db5148bc8b0c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Small Suitcase",
    description: "A small suitcase for a shor trip",
    user: User.all.sample,
    credits: 250,
    photo_fake: "https://images.unsplash.com/photo-1536238349444-c05ffb6837e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Organised Suitcase",
    description: "This suitcase has got lots of compartments to fit in the most you can",
    user: User.all.sample,
    credits: 260,
    photo_fake: "https://images.unsplash.com/photo-1542323073-dc63913f3262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Big Suitcase",
    description: "This suitcase is perfect for a big trip",
    user: User.all.sample,
    credits: 220,
    photo_fake: "https://images.unsplash.com/photo-1515935480894-3bab89cf8e89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Business Suitcase",
    description: "Specialized pockets for pens, notebooks and a laptop",
    user: User.all.sample,
    credits: 200,
    photo_fake: "https://images.unsplash.com/photo-1499985217418-1f2c55099b4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Nomad Suitcase",
    description: "Suitable for the ones that are always on the move",
    user: User.all.sample,
    credits: 230,
    photo_fake: "https://images.unsplash.com/photo-1499985217418-1f2c55099b4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

#LAWN MOWERS
  {
    name: "Lawn Mower 2000",
    description: "Very good and sustainable lawn mower.",
    user: User.all.sample,
    credits: 800,
    photo_fake: "https://images.unsplash.com/photo-1458245201577-fc8a130b8829?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Lawn Mower V10",
    description: "Modern and long lasting.",
    user: User.all.sample,
    credits: 850,
    photo_fake: "https://cdn.pixabay.com/photo/2015/09/13/18/43/lawn-mower-938555__340.jpg"
  },

  {
    name: "Brand New Lawn Mower",
    description: "In perfect conditions, includes accessories.",
    user: User.all.sample,
    credits: 820,
    photo_fake: "https://images.pexels.com/photos/589/garden-grass-meadow-green.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },

  {
    name: "Wireless Lawn Mower",
    description: "Easier to maneuver.",
    user: User.all.sample,
    credits: 750,
    photo_fake: "https://as2.ftcdn.net/jpg/00/66/54/33/500_F_66543364_kdFacbCAyAX1KkbXvcIpWhFmjbUaUqB4.jpg"
  },

  {
    name: "BOSCH Lawn Mower",
    description: "Includes original tools and accessories.",
    user: User.all.sample,
    credits: 790,
    photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19t8biYQg9mUredClUI_YLdibB-9p6VArUgs8HCJtxm6aNY_neQ"
  },


#STEREO BOXES
  {
    name: "Panasonic Stereo Boxes",
    description: "Very loud owerful boxes, can be paired with other DJ equipment.",
    user: User.all.sample,
    credits: 455,
    photo_fake: "https://images.pexels.com/photos/159613/ghettoblaster-radio-recorder-boombox-old-school-159613.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },

  {
    name: "Vintage Stereo Boxes",
    description: "For the ones who love the characteristic sound.",
    user: User.all.sample,
    credits: 500,
    photo_fake: "https://images.unsplash.com/photo-1487180144351-b8472da7d491?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Stereo Box Amplifier",
    description: "Bluetooth & Built-in Microphone.",
    user: User.all.sample,
    credits: 450,
    photo_fake: "https://image.shutterstock.com/image-photo/stereo-system-260nw-416299081.jpg"
  },

  {
    name: "Pro-Ject Stereo Box 20",
    description: "Portable Stereo Boombox with Programmable CD Player and FM.",
    user: User.all.sample,
    credits: 480,
    photo_fake: "https://images.pexels.com/photos/9295/vintage-music-business-shop.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },

  {
    name: "Sony Stereo",
    description: "High Power One Box Music System with Lighting Effects.",
    user: User.all.sample,
    credits: 470,
    photo_fake: "https://images.pexels.com/photos/157557/pexels-photo-157557.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },

#TOOLS 41
  {
    name: "Tool Set",
    description: "Tool Kit Set for DIY and Repair with Combination Pliers in Plastic Toolbox.",
    user: User.all.sample,
    credits: 500,
    photo_fake: "https://images.unsplash.com/photo-1534190239940-9ba8944ea261?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "WORKPRO Tool Set",
    description: "Drive Socket Set, Quick Release Ratchet Wrench",
    user: User.all.sample,
    credits: 500,
    photo_fake: "https://images.unsplash.com/photo-1534190239940-9ba8944ea261?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "38 Piece Tool Kit",
    description: "Magnetic Precision Ratcheting Screwdriver & Phillips, Slotted, Torx",
    user: User.all.sample,
    credits: 550,
    photo_fake: "https://images.unsplash.com/photo-1530124566582-a618bc2615dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "399 PCS TOOL KIT",
    description: "SOCKET SET / SCREW DRIVERS + MUCH MORE",
    user: User.all.sample,
    credits: 490,
    photo_fake: "https://images.unsplash.com/photo-1507126694149-a8685f99aa4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Haus256pc Hand Tool",
    description: "Combo Tool Kit with Satin-finished Tools & Heavy Duty Storage Case",
    user: User.all.sample,
    credits: 450,
    photo_fake: "https://images.unsplash.com/photo-1540207605711-f0b85c37c8ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

#CAMERAS
{
    name: "PANASONIC Camera",
    description: "DC-G9LEB-K 12-60 mm Leica DG Lens Mirrorless Compact System Camera",
    user: User.all.sample,
    credits: 630,
    photo_fake: "https://images.unsplash.com/photo-1495512046360-dad6e8b83667?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Canon EOS Camera",
    description: "DSLR Camera and EF-S 18-55 mm f/3.5-5.6 III Lens",
    user: User.all.sample,
    credits: 650,
    photo_fake: "https://images.unsplash.com/photo-1503847003563-6819dd01382b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Nikon B500 Camera",
    description: "Coolpix Digital Compact Camera - Black",
    user: User.all.sample,
    credits: 600,
    photo_fake: "https://images.unsplash.com/photo-1495844138710-938feaeeadcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Sony Camera",
    description: "Digital Compact Camera with Wi-Fi and NFC (18.2 MP, 20x Optical Zoom)",
    user: User.all.sample,
    credits: 610,
    photo_fake: "https://images.unsplash.com/photo-1494251268800-9ca078482168?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Sony Camera CEH",
    description: "Digital Compact Camera (20.1 MP, 5x Zoom, 2.7 LCD, 720p HD, 23 mm)",
    user: User.all.sample,
    credits: 700,
    photo_fake: "https://images.unsplash.com/photo-1479909031872-133432b2d7c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Crosstour Action Camera",
    description: "Wifi Full HD 1080P Waterproof Cam 2” LCD Screen 98ft Underwater 170° Wide-angle",
    user: User.all.sample,
    credits: 750,
    photo_fake: "https://images.unsplash.com/photo-1495707902641-75cac588d2e9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  },

 {
    name: "Digital Camera",
    description: "Youmeet Digital Cameras - 2.7 inch 18 MP for Holiday Family, Friends, Kids",
    user: User.all.sample,
    credits: 645,
    photo_fake: "https://images.unsplash.com/photo-1486574655068-162e94137442?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Vlogging Camera",
    description: "24MP Ultra HD WiFi Digital Camera 3.0 Inch 180 Degree Rotation Flip Screen",
    user: User.all.sample,
    credits: 70,
    photo_fake: "https://images.unsplash.com/photo-1493805503700-3219b693ffcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Sony DSC-RX10 Camera",
    description: "Black 20.2 MP 8.3 x Zoom 3.0 LCD FHD 24 mm Wide Lens Wi-Fi",
    user: User.all.sample,
    credits: 750,
    photo_fake: "https://images.unsplash.com/photo-1529734781665-be642ec8fc8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Camera FUJIFILM",
    description: "with XF18-55mm lens",
    user: User.all.sample,
    credits: 690,
    photo_fake: "https://images.unsplash.com/photo-1519638831568-d9897f54ed69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  },

  {
    name: "Nikon B500 Camera",
    description: "Coolpix Digital Compact Camera",
    user: User.all.sample,
    credits: 620,
    photo_fake: "https://images.unsplash.com/photo-1519638831568-d9897f54ed69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
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

m_request = ["I wanna borrow this", "Can I borrow this?", "Is this item available?" "Could I borrow this item please?"]
m_response = ["You can borrow this", "Sure!", "Of course!", "It is available", "Yeah!", "Definitly!"]

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



