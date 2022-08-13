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
    img_url: "https://s3.ap-northeast-1.amazonaws.com/kodomomanabi-labo.net/wp/wp-content/uploads/images/2021/03/food-education-breakfast-1.jpg",
    name: Faker::Food.dish,
    description: Faker::Food.description,
    rating: rand(1..5)
  )
end

puts "#{Breakfast.count} finished"
