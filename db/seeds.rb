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

puts "Seeding Locations..."
l1 = Location.create(country: "France", city: "Saint-Tropez")
l2 = Location.create(country: "USA", city: "Grand Canyon")
l3 = Location.create(country: "Brazil", city: "Sao Paulo")
l4 = Location.create(country: "Canada", city: "Rockies")
l5 = Location.create(country: "Sweden", city: "Stockholm")
l6 = Location.create(country: "Iceland", city: "Rejkjavik")
l7 = Location.create(country: "Indonesia", city: "Bali")
l8 = Location.create(country: "Australia", city: "Sydney")
l9 = Location.create(country: "Nepal", city: "Kathmandu")
l10 = Location.create(country: "Japan", city: "Tokyo")


puts "Seeding Users..."
u1 = User.create(username: "Sofia", password: "hello", bio: "I'm just here for the international dog pics")
u2= User.create(username: "Mera", password: "hello", bio: "Hi, my name Mera. I like to travel")
u3 = User.create(username: "Doug", password: "hello", bio: "Looking for good coffee, and good beer")
u4 = User.create(username: "Rylan", password: "hello", bio: "I'm just a living dream")
u5 = User.create(username: "Lotti", password: "hello", bio: "Always on the hunt for the best treats")


puts "Seeding Posts..."
p1= Post.create(title: "St Tropez Livin", description: "Went to the French Riviera in September omg it was so beautiful.", user: u2, location: l1 , photo_url: "https://cdn2.veltra.com/ptr/20180716125616_1413743232_3327_0.jpg?imwidth=550&impolicy=custom")
p2=Post.create(title: "Rafting Down the Grand Canyon", description: "Went on an epic month long rafting trip through the Grand Canyon. We were so lucky that we got permits, felt like winning the lottery!", user: u3 , location: l2 , photo_url: "https://www.oars.com/wp-content/uploads/2016/02/ColoradoMay2010__1917-1024x640.jpg")
p3=Post.create(title: "Toyko Treats", description: "Found myself wandering down the smaller streets of Tokyo. I'm always on the hunt for new and delicious snacks. Tokyo did not disappoint!", user: u5, location: l10 , photo_url: "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/50/2017/04/J1GDDB-920x614.jpg")
p4=Post.create(title: "Sao Paulo", description: " Did you know that coffee is an integral part of Sao Paulo? As a coffee *snob* I just had to go and see what the fuss was all about.  ", user: u3 , location: l3 , photo_url: "http://coffeelab.com.br/wp-content/uploads/2014/10/coffee-lab-gabriel-cabral1.jpeg")
p5=Post.create(title: "Stockholm Adventures", description: "Nothing better than Sweden in the summer. Late and light summer nights are hard to beat.", user: u1 , location: l5 , photo_url: "https://www.stockholmarchipelago.se/media/1105/paddling-kayaking-in-the-archipelago_high-res-visit-stockholm-pressbild.jpg?anchor=center&mode=crop&width=1024&rnd=131043407390000000")
p6=Post.create(title: "Canadian Rockies Hiking Trip", description: "Went on an epic 7 day backpacking trip through the candaian rockies. 10/10 would recommend", user: u2 , location: l2 , photo_url: "https://blog.nfb.ca/wp-content/uploads/2017/08/rockies.png")
p7=Post.create(title: "Kathmandu, how you do", description: "Incredibly spiritual experience so close to the tallest mountain in the world. The people are so kind and genuine. Must do for the off the beaten path traveler", user: u4 , location: l9, photo_url: "https://media.vogue.in/wp-content/uploads/2018/06/featured.2-866x487.jpg")
p8=Post.create(title: "The Land of Fire and Ice Stole My Heart", description: "Stopped over in Iceland thanks to Icelandair as I was on my way to Europe. This country is where fairy tales come from! Food is crazy expensive though", user: u1, location: l7 , photo_url: "https://amp.thisisinsider.com/images/5af5b3dc5e48ec4f008b4571-750-562.jpg")
p9=Post.create(title: "Bali Baby", description: "After spending a good part of this month in Bali during my year long adventure I have decided that I need to come back and live here", user: u5 , location: l7 , photo_url: "https://t-ec.bstatic.com/images/hotel/max1024x768/167/167144829.jpg")
p10=Post.create(title: "Yank takes Straya", description: "From Bondi beach to the outback, I'm starting in Sydney and working my way around the land down unda", user: u4 , location: l8 , photo_url: "https://www.dewanholidays.com/packageImg/large/1515135945_beautiful-australia-01.jpg")


puts "Seeding Comments..."
  c1=Comment.create(text: "Spiritual AF", user: u1 , post: p7 )
  c2=Comment.create(text: "Sick! Did you guys get a guide?", user: u1, post:  p2)
  c3=Comment.create(text: "Bali looks soo amazing, I can't wait to go", user: u2, post: p9)
  c4=Comment.create(text: "Can you make a followup post to deepdive into the coffee trade?", user: u2, post: p4)
	c5=Comment.create(text: "How was the herring?", user: u3, post: p5)
	c6=Comment.create(text: "So incredibly beautiful!!", user: u3, post: p6)
	c7=Comment.create(text: "How long did the ring road drive take you?", user: u4, post: p8)
	c8=Comment.create(text: "Did you pet a kangaroo during your trip?", user: u4, post: p10)
	c9=Comment.create(text: "What was your tastiest treat?", user: u5, post: p3)
	c10=Comment.create(text: "That looks like such a great trip", user: u5, post: p1)
