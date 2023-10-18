# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|"{  }
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = [
  { name: 'Dishoom', address: '7 Boundary St, London E2 7JE',
    phone_number: '123 456 7890', category: 'french' },
  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '123 456 7890', category: 'italian' },
  { name: 'Mikasa', address: '123 My Street, Tokyo',
    phone_number: '123 456 7890', category: 'japanese' },
  { name: 'Shanghai 360', address: '356 A Street, Montreal',
    phone_number: '123 456 7890', category: 'chinese' },
  { name: 'Chez Lionel', address: '789 100 Alley, Paris',
    phone_number: '123 456 7890', category: 'belgian' }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
