# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Location.destroy_all
User.destroy_all
france = Location.create(country: "France", city: "Saint-Tropez")
grand = Location.create(country: "USA", city: "Grand Canyon")
brazil = Location.create(country: "Brazil", city: "Sao Paulo")
rockies = Location.create(country: "Canada", city: "Rockies")

mera = User.create(username: "Mera", password: "hi", bio: "Hi, my name Mera. I like to travel.")

Post.create(title: "St Tropez", description: "Went to the French Riviera in September omg it was so beautiful.", photo_url: "https://cdn2.veltra.com/ptr/20180716125616_1413743232_3327_0.jpg?imwidth=550&impolicy=custom", user: mera, location: france)



# puts "Seeding Users..."
# u1 = User.create(username: "Sofia", password: "hello", bio: " I'm just here for the international dog pics")
#  # @u2= User.create(username: " Mera ", password: " hello ", bio: "Hi, my name Mera. I like to travel")
# u3 = User.create(username: "Doug", password: "hello", bio: "I love coldbrew and travel")
# u4 = User.create(username: "Rylan", password: "hello", bio: "I'm just living the dream")
# u5 = User.create(username: "Lotti", password: "hello", bio: "Always on the hunt for the best treats")
#




# puts "Seeding Comments..."
#   @c1=Comment.create(comment: " ", user_id: , post_id: ),
#   @c2=Comment.create(comment: " ", user_id: , post_id: ),
#   @c3=Comment.create(comment: " ", user_id: , post_id: ),
#   @c4=Comment.create(comment: " ", user_id: , post_id: ),
# 	@c5=Comment.create(comment: " ", user_id: , post_id: ),
# 	@c6=Comment.create(comment: " ", user_id: , post_id: ),
# 	@c7=Comment.create(comment: " ", user_id: , post_id: ),
# 	@c8=Comment.create(comment: " ", user_id: , post_id: )
# # ]
