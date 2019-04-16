# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Location.destroy_all

france = Location.create(country: "France", city: "Saint-Tropez")

mera = User.create(username: "Mera", password: "hello", bio: "Hi, my name Mera. I like to travel.")

Post.create(title: "St Tropez", description: "Went to the French Riviera in September omg it was so beautiful.", photo_url: "https://cdn2.veltra.com/ptr/20180716125616_1413743232_3327_0.jpg?imwidth=550&impolicy=custom", user: mera, location: france)
