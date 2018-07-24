# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: "Anum", last_name: "Siddiqui", username: "anum", email: "anum@gmail.com", password_digest: "123456")

user2 = User.create(first_name: "Marie", last_name: "Sonko", username: "marie", email: "marie@gmail.com", password_digest: "123456")

user3 = User.create(first_name: "Jane", last_name: "Doe", username: "Jane", email: "jane@gmail.com", password_digest: "123456")

product1 = Product.create(title:"Plum", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"https://drive.google.com/open?id=1HYYv4W7KPIPxau3dLX9DhujQFu9HYjGv", lightURL: "https://drive.google.com/open?id=1_FWByCj2ngxP5h96iBg4bEnvDqvA7hfg", medURL:"https://drive.google.com/open?id=1alJzAq18Sr3YDgE4SXNMfqdCdgJ2PmWo", darkURL:"https://drive.google.com/open?id=1YrD8oDhrJAV516I6xLMxZL-ITL9pISF_")

product2 = Product.create(title:"Red", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"https://drive.google.com/open?id=1g60QCFiZR5QrbhCJePRsOUGAgiOseY7G", lightURL: "https://drive.google.com/open?id=1bVGvlbfZ6oxpuw33_wNZlJicfEvXC2bI", medURL:"https://drive.google.com/open?id=1rPYJbWH2UPqvpHWJ_YhcdWIkGDWwnd8t", darkURL: "https://drive.google.com/open?id=1tHHkCmvSW_YDnh371MUYVYG4z6ipkpxN")

product3 = Product.create(title:"Pink", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"https://drive.google.com/open?id=1qZ-wHfEjh6PRfGlamWjM_JvPH-EBpn5W", lightURL: "https://drive.google.com/open?id=19VVl5L8K1-gHGXXu9rDf8Kkj_gwofHFj", medURL:"https://drive.google.com/open?id=1ACRrRHHB6ODAHK3ehCzfdMjazZyvWtA1", darkURL:"https://drive.google.com/open?id=14lnX5x8x04YEDCTg9Z1wDuN9qAMbVvGB")

product4 = Product.create(title:"Nude", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"https://drive.google.com/open?id=1GDGYGjuceXzzozMnT5cq2GsyX0ckpIPt", lightURL: "https://drive.google.com/open?id=1fhNzB2ytgdT6nLL3GMbf5oiSX6yqFUtK", medURL:"https://drive.google.com/open?id=1PRw74zU4t9S1VCvU-zRbgB9iKKsj5KNd", darkURL:"https://drive.google.com/open?id=17g5eoLk68A1Nfxo81Dn6XXgDN-BBSphv")

product5 = Product.create(title:"Coral", description:"Size: 3 g / 0.1 US oz", category:"Lipstick", price:"$18.50", imgURL:"https://drive.google.com/open?id=1b55sseZ92nxR-kkWrrFVqdF1cFUIotWU", lightURL: "https://drive.google.com/open?id=1HxQPRbwNAOUlKnBsNK1fzNPTP4bhB9AG", medURL:"https://drive.google.com/open?id=1FpR7ewxSBrUSZbppCLvl7tXX5OiCmFwk", darkURL:"https://drive.google.com/open?id=1CGMyDjIYjYtJPxdWQm3veLxysZsuKwOk")

review1 = Review.create(user_id: user1.id, product_id: product1.id, content: "My favorite shade of all time!")

review2 = Review.create(user_id: user2.id, product_id: product2.id, content: "Best color of all time")

review3 = Review.create(user_id: user3.id, product_id: product3.id, content: "I love the formula")
