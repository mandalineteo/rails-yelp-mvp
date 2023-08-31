# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."
pizza_hut = {name: "Pizza Hut", address: "Republic Plaza", category: "italian"}
gong_cha = {name: "Gong Cha", address: "Somewhere in Raffles Place", category: "chinese"}
omnivore = {name: "Omnivore", address: "Collyer Quay", category: "french"}
old_chang_kee = {name: "Old Chang Kee", address: "Somehere in Raffles Place", category: "japanese"}
chai_tea = {name: "Chai Tea", address: "Also in Collyer Quay", category: "belgian"}

[pizza_hut, gong_cha, omnivore, old_chang_kee, chai_tea].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
