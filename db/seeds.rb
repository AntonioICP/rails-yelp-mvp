# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing old data..."
Restaurant.destroy_all

restaurants = [
  Restaurant.new(name: 'The Golden Fork', address: '123 Gourmet Street, Sydney, NSW', category: 'french', phone_number: '02 9876 5432'),
  Restaurant.new(name: 'Sizzle & Spice', address: '456 Flavour Avenue, Melbourne, VIC', category: 'chinese'),
  Restaurant.new(name: 'Ocean Breeze Bistro', address: '789 Coastal Road, Brisbane, QLD', category: 'belgian', phone_number: '07 7654 3210'),
  Restaurant.new(name: 'The Hungry Panda', address: '321 Bamboo Lane, Perth, WA', category: 'japanese'),
  Restaurant.new(name: 'La Petite Table', address: '654 Culinary Court, Adelaide, SA', category: 'italian', phone_number: '08 5432 1098')
]

restaurants.each(&:save)
