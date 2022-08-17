# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '+020169289912', category: 'belgian'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '+020169289998', category: 'italian'}
chinese_empire = {name: "Chinese Empire", address: "Rua Carlos Mardel, 22, Lisbon", phone_number: '+351169289998', category: 'chinese'}
paris_kebabs = {name: "Paris Kebabs", address: "Rua Carlos Mardel, 54, Lisbon", phone_number: '+351169288898', category: 'french'}
lisbon_sushi = {name: "Lisbon Sushi", address: "Rua Carlos Mardel, 90, Lisbon", phone_number: '+351169287809', category: 'japanese'}

[dishoom, pizza_east, chinese_empire, paris_kebabs, lisbon_sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
