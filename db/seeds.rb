require 'faker'

# Create 10 owners owning 10 cinemas individually
puts 'cleaning db'

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
  capacity = rand(10)
  price = rand(100)
  movie_selection = Faker::Movie.title
  description = Faker::Hipster.sentence
  screen_size = rand(40..100)

  puts "create cinema"

  cinemas = Cinema.create(
    location: location,
    capacity: capacity,
    price: price,
    movie_selection: movie_selection,
    description: description,
    screen_size: screen_size,
    user: user
  )
end

puts 'done'
