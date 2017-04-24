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
Review.destroy_all

# come back to add users to review, burger, and restaurant column
admin_user=User.create(email: "admin@gmail.com", password: "123456", username: "Ash", first_name: "Bob", last_name: "Dole", admin: true)
user= User.create(email: "user@gmail.com", password: "123456", username: "Misty", first_name: "Jean", last_name: "Simmons")

3.times do
  name =  Faker::Company.name
  location = Faker::Address.city
  description = Faker::Company.catch_phrase + "<< RESTAURANT DESCRIPTION"
  FactoryGirl.create(:restaurant, name: name, location: location, description: description)
end

# creating burgers
Restaurant.all.each do |r|
  3.times do
    price = Faker::Number.between(1,20)
    url = "baconator.jpg"
    description = Faker::Food.ingredient + Faker::Food.ingredient + Faker::Food.ingredient + " BURGER DESCRIPTION"
    name = Faker::Ancient.titan + "<< BURGER NAME"
    FactoryGirl.create(:burger, restaurant: r, name: name, description: description, image_url: url, price: price, user: user)
  end
end

# creating reviews
Burger.all.each do |b|
  3.times do
    rating = Faker::Number.between(1,5)
    body = Faker::ChuckNorris.fact + " REVIEW BODY"
    FactoryGirl.create(:review, burger: b, burger_rating: rating, body: body)
  end
end
