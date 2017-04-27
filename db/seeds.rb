Restaurant.destroy_all
Burger.destroy_all
User.destroy_all
Review.destroy_all
five_guys = Restaurant.create(name: "Five Guys", location: "Boston, MA", dining_type: "Fast Food", description: "Literally known as the heaven for burgers.", hours: "11AM-10PM")
wendys = Restaurant.create(name: "Wendys", location: "Boston, MA", dining_type: "Fast Food", description: "Home of the Baconator, the Double Stack, and many more. Also known for its shakes.", hours: "10AM-9PM")
b_good = Restaurant.create(name: "B.good", location: "Boston, MA", dining_type: "Fast Food", description: "Counter-serve chain featuring health-conscious versions of fast-food favorites.", hours: "7AM-9PM")
tasty_burger = Restaurant.create(name: "Tasty Burger", location: "Boston, MA", dining_type: "Fast Food", description: "Late-night Fenway branch of a local retro burger chain with outdoor seating, beer & wine.", hours: "11AM-2AM")
shake_shack = Restaurant.create(name: "Shake Shack", location: "Boston, MA", dining_type: "Fast Food", description: "Hip, counter-serve chain for gourmet takes on fast-food classics like burgers & frozen custard.", hours: "11AM-10PM")
admin_user = User.create(email: "admin@gmail.com", password: "123456", username: "Ash", first_name: "Bob", last_name: "Dole", admin: true)
user = User.create(email: "user@gmail.com", password: "123456", username: "Misty", first_name: "Melissa", last_name: "Simmons")
fryguy = User.create(email: "fryguy@gmail.com", password: "asdfgh", username: "FryGuy", first_name: "Fry", last_name: "Hamson")
genie = User.create(email: "robin@gmail.com", password: "098765", username: "Genie", first_name: "Jean", last_name: "Robinson")
bcn_cheese = Burger.create(name: "Bacon Cheeseburger", description: "Two hand-formed patties, grilled to order - with two strips of crispy bacon and two slices of cheese.", image_url: "baconcheese.jpg", price: "8.69", restaurant: five_guys, user: admin_user)
lil_cheese = Burger.create(name: "Little Cheeseburger", description: "Like our regular cheeseburger, just one grilled to order, hand-crafted patty instead of two.", image_url: "littlecheese.jpg", price: "5.69", restaurant: five_guys, user: user)
baconator = Burger.create(name: "Baconator", description: "Enjoy bacon? Made with two 1/4 lb. fresh, never frozen, 100% North American beef patties.", image_url: "baconator.jpg", price: "6.09", restaurant: wendys, user: fryguy)
dbl_stack = Burger.create(name: "Double Stack", description: "Big on taste and small on price, delicious!", image_url: "dblstack.png", price: "2.09", restaurant: wendys, user: genie)
smk_shack = Burger.create(name: "SmokeShack", description: "Cheeseburger with ranch bacon, chopped cherry peppers, and that amazing ShackSauce", image_url: "smoke.jpg", price: "6.89", restaurant: shake_shack, user: fryguy)
west_side = Burger.create(name: "West-side Burger", description: "Avacado: check, salsa: check, delicious burger? check", image_url: "westside.jpg", price: "6.59", restaurant: b_good, user: fryguy)
el_guapo = Burger.create(name: "El Guapo", description: "So many good burger options here, but I love this one because of the bacon.", image_url: "guapo.jpg", price: "6.59", restaurant: b_good, user: fryguy)
Review.create(burger: smk_shack, burger_rating: 5, body: "Holy smokes that's a good burger.", user: genie)
Review.create(burger: smk_shack, burger_rating: 4, body: "Those cherry peppers really add a nice flavor.", user: fryguy)
Review.create(burger: smk_shack, burger_rating: 2, body: "Too Spicy! Even though the burger tasted good.", user: genie)
Review.create(burger: bcn_cheese, burger_rating: 5, body: "Honestly this should be the only burger you eat", user: admin_user)
Review.create(burger: bcn_cheese, burger_rating: 5, body: "WOW WOW WOW, I'm coming back to get another for dinner", user: user)
Review.create(burger: lil_cheese, burger_rating: 3, body: "It's a good burger, good alternative option if you're trying to save a few bucks", user: user)
Review.create(burger: lil_cheese, burger_rating: 3, body: "Solid burger, but I hate missing out on that bacon.", user: genie)
Review.create(burger: baconator, burger_rating: 4, body: "Such a classic option at Wendys, goes very well a frosty on the side.", user: genie)
Review.create(burger: baconator, burger_rating: 4, body: "Great option, probably overpriced when you compare it other burgers.", user: fryguy)
Review.create(burger: baconator, burger_rating: 2, body: "Meh, the bacon is great, but I wasn't that big of a fan.", user: admin_user)
Review.create(burger: dbl_stack, burger_rating: 5, body: "If you're going with the 4 for 4, this has to be the burger choice.", user: user)
Review.create(burger: dbl_stack, burger_rating: 4, body: "It's 2 dollars, I mean c'mon how could you not love this piece of meat", user: fryguy)
Review.create(burger: dbl_stack, burger_rating: 4, body: "I get two of these, plus a frosty... talk about heaven.", user: admin_user)
Review.create(burger: west_side, burger_rating: 5, body: "I'm drooling while I write this review...", user: admin_user)
Review.create(burger: west_side, burger_rating: 4, body: "Anytime a place puts some avacado on their burger, that have my allegiance", user: user)
Review.create(burger: el_guapo, burger_rating: 5, body: "I proprosed to this burger, and now we're together forever.", user: fryguy)
