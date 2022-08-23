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

Breakfast.create!(name: "bacon egg toast")
Breakfast.create!(name: "Oatmeal")
Breakfast.create!(name: "Onigiri")
Breakfast.create!(name: "Pancake")
Breakfast.create!(name: "Scrambled eggs")
Breakfast.create!(name: "Otyaduke")
Breakfast.create!(name: "Curry")
Breakfast.create!(name: "Sunny-side up")
Breakfast.create!(name: "Omelette")
Breakfast.create!(name: "Rice & miso soup")


puts "#{Breakfast.count} finished"
