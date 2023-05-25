# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
List.create(name: "Old Movies")
List.create(name: "Fantasy Movies")
List.create(name: "Action Movies")
List.create(name: "Coming of Age Movies")

puts 'Creating 100 fake movies...'
100.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(0..10)
  )
  movie.save!
end
puts 'Finished!'
