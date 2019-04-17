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
Comment.destroy_all

france = Location.create(country: "France", city: "Saint-Tropez")
grand = Location.create(country: "USA", city: "Grand Canyon")
brazil = Location.create(country: "Brazil", city: "Sao Paulo")
rockies = Location.create(country: "Canada", city: "Rockies")

mera = User.create(username: "Mera", password: "hi", bio: "Hi, my name Mera. I like to travel.")
bob = User.create(username: "Bob", password: "hey", bio: "Hi, my name Bob. I like to cook.")

p1 = Post.create(title: "St Tropez", description: "Went to the French Riviera in September omg it was so beautiful.", photo_url: "https://cdn2.veltra.com/ptr/20180716125616_1413743232_3327_0.jpg?imwidth=550&impolicy=custom", user: mera, location: france)

c1 = Comment.create(post: p1, user: mera, text: "first comment")
c2 = Comment.create(post: p1, user: bob, text: "another comment")
c3 = Comment.create(post: p1, user: mera, text: "what comment")
c4 = Comment.create(post: p1, user: bob, text: "more comment")
c5 = Comment.create(post: p1, user: mera, text: "yay comment")
