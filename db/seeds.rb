# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Breakdast destroying"
Breakfast.destroy_all
# List.destroy_all

10.times do
  Breakfast.create!(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    rating: rand(1..5)
  )
end

puts "#{Breakfast.count} finished"
