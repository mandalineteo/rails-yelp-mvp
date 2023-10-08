require 'faker'

puts 'Clearing database...'
Review.destroy_all
Restaurant.destroy_all
puts 'Finished clearing database'

puts 'Creating 20 restaurants...'

restaurants = []

20.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w[Chinese Italian Japanese French Belgian].sample,
    phone_number: rand(60_000_000..69_999_999).to_s,
    description: Faker::Restaurant.description
  )
  restaurants << restaurant
  puts "Created #{restaurant.name}"
end
puts 'Finished creating 20 restaurants!'

puts 'Creating reviews for restaurants...'
restaurants.each do |restaurant|
  5.times do
    Review.create!(
      restaurant:,
      content: Faker::Restaurant.review,
      rating: rand(1..5)
    )
  end
  puts "Created reviews for #{restaurant.name}!"
end
