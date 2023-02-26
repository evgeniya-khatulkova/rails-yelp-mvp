# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

5.times do
  restaurant = Restaurant.create!(
                     name: Faker::Restaurant.name,
                     address: Faker::Address.street_address,
                     phone_number: Faker::PhoneNumber.phone_number,
                     category: Restaurant::CATEGORIES.sample)
    Review.create(content: Faker::Quotes::Shakespeare.as_you_like_it_quote,
                  rating: Faker::Number.between(from: 0, to: 5),
                  restaurant_id: restaurant.id)
end
