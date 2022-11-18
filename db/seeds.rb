# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'deleteing all previous restaurants'
Restaurant.destroy_all

puts 'creating new restaurants:'

100.times do
  r = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: %w[Mary John Henry Lizzie].sample
  )

  puts "Created restaurant #{r.id} - #{r.name}"
end

puts 'finished creating restaurants'
