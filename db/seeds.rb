# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(first_name: "Anum", last_name: "Siddiqui", username: "anum", email: "anum@gmail.com", password: "123456")

user2 = User.create(first_name: "Marie", last_name: "Sonko", username: "marie", email: "marie@gmail.com", password: "123456")

user3 = User.create(first_name: "Jane", last_name: "Doe", username: "Jane", email: "jane@gmail.com", password: "123456")

product1 = Product.create(title:"Plum", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"/images/lipstick1.jpeg", lightURL: "/images/lipstick1_light.jpg", medURL:"/images/lipstick1_medium.jpg", darkURL:"/images/lipstick1_dark.jpg")

product2 = Product.create(title:"Red", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"/images/lipstick2.jpeg", lightURL: "/images/lipstick2_light.jpg", medURL:"/images/lipstick2_medium.jpg", darkURL: "/images/lipstick2_dark.jpg")

product3 = Product.create(title:"Pink", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"/images/lipstick3.jpeg", lightURL: "/images/lipstick3_light.jpg", medURL:"/images/lipstick3_medium.jpg", darkURL:"/images/lipstick3_dark.jpg")

product4 = Product.create(title:"Nude", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"/images/lipstick4.jpeg", lightURL: "/images/lipstick4_light.jpg", medURL:"/images/lipstick4_medium.jpg", darkURL:"/images/lipstick4_dark.jpg")

product5 = Product.create(title:"Coral", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"/images/lipstick5.jpeg", lightURL: "/images/lipstick5_light.jpg", medURL:"/images/lipstick5_medium.jpg", darkURL:"/images/lipstick5_dark.jpg")

review1 = Review.create(user_id: user1.id, product_id: product1.id, content: "My favorite shade of all time!")

review2 = Review.create(user_id: user2.id, product_id: product2.id, content: "Best color of all time")

review3 = Review.create(user_id: user3.id, product_id: product3.id, content: "I love the formula")
