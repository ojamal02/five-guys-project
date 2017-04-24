# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Burger.destroy_all
User.destroy_all
10.times do
  FactoryGirl.create(:restaurant, name: { Faker::Company.name }, location: { Faker::Address.city }, description: { Faker::Company.catch_phrase + "<< Restaurant Description" })
end
Restaurant.all.each do |r|
  5.times do
    FactoryGirl.create(:burger, restaurant: r, name: { Faker::Ancient.titan }, description: { Faker::Food.ingredient + Faker::Food.ingredient + Faker::Food.ingredient }, image_url: { Faker::Avatar.image }, price: { Faker::Number.between(1,20) })
  end
end
Burger.all.each do |b|
  3.times do
    rating = { Faker::Number.between(1,5) }
    body = { Faker::ChuckNorris.fact }
    FactoryGirl.create(:review, burger: b, burger_rating: rating, body: body)
  end
end
