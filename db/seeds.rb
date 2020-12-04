require 'faker'

puts 'cleaning db'

Cinema.destroy_all
User.destroy_all

puts 'db cleaned'

description_array = ['Cozy home theatre in the Heart of the City',
'8 minutes walk from Bugis station',
'Fully furnished Modern Plasma TV in Jurong',
'Shining Solo Room in Astoria. Wifi & Netflix',
'Sofa bed livin room, ONLY LADIES',
'NEW Stylish private room close to Orchard Road'
]

location_array = ['Bugis', 'City Hall', 'Jurong', 'Katong', 'Tampines', 'Dhoby Ghaut', 'Novena', 'Newton']

5.times do

  user_name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Internet.password
  user = User.create(user_name: user_name, email: email, password: password)

  puts "create owner"

  location = location_array.sample
  capacity = rand(4..15)
  price = rand(100)
  movie_selection = Faker::Movie.title
  description = description_array.sample
  screen_size = rand(40..90)

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

puts 'done!'
