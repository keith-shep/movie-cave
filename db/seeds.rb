require 'faker'

description_array = ['Cozy Flat in the Heart of the Upper West Side',
'8minutes walk from station',
'NEW Modern Room',
'Shining Solo Room in Astoria. Wifi & Netflix',
'SOFA BED  LIVING ROOM, ONLY LADIES',
'NEW Stylish private room close to  G train'
]

# Create 10 owners owning 10 cinemas individually
puts 'cleaning db'

Booking.destroy_all
Cinema.destroy_all
User.destroy_all

puts 'db cleaned'

5.times do

  user_name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Internet.password
  user = User.create(user_name: user_name, email: email, password: password)

  puts "create owner"

  location = Faker::Address.state
  capacity = rand(1..10)
  price = rand(100)
  movie_selection = Faker::Movie.title
  description = description_array.sample
  screen_size = rand(40..100)

  puts "create cinema"

  cinemas = Cinema.create(
    location: location,
    capacity: capacity,
    price: price,
    movie_selection: movie_selection,
    description: description,
    screen_size: screen_size,
    user: user,
  )

end

puts 'done'
