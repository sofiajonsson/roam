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
p2=Post.create(title: "Rafting Down the Grand Canyon", description: "Went on an epic month long rafting trip through the Grand Canyon. We were so lucky that we got permits, felt like winning the lottery!", user: u3 , location: l2 , photo_url: "https://www.google.com/search?q=grand+canyon&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiU-Ya8ydfhAhVYgp4KHTzKCEkQ_AUIDygC&biw=1440&bih=821#imgrc=lUCcVU4ZULEWvM:")
p3=Post.create(title: "Toyko Treats", description: "Found myself wandering down the smaller streets of Tokyo. I'm always on the hunt for new and delicious snacks. Tokyo did not disappoint!", user: u5, location: l10 , photo_url: "https://www.google.com/search?q=tokyo+photo&tbm=isch&source=iu&ictx=1&fir=vqCXKWnpbmMvAM%253A%252CRKfM19UMQ5gf5M%252C_&vet=1&usg=AI4_-kT4tp1CMC1jcKqJE3pjBt27S_ahPw&sa=X&ved=2ahUKEwj_jNLpydfhAhWEr54KHX5uCYkQ9QEwCnoECAcQGA#imgrc=vqCXKWnpbmMvAM:")
p4=Post.create(title: "Sao Paulo", description: " Did you know that coffee is an integral part of Sao Paulo? As a coffee *snob* I just had to go and see what the fuss was all about.  ", user: u3 , location: l3 , photo_url: "https://www.google.com/search?q=traveling+to+sao+paulo+for+coffee&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjrqOqozNfhAhUTvp4KHXM7BFAQ_AUIECgD&biw=1440&bih=821#imgrc=SJKulp231Giu2M:")
p5=Post.create(title: "Stockholm Adventures", description: "Nothing better than Sweden in the summer. Late and light summer nights are hard to beat.", user: u1 , location: l5 , photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=Tly3XNmqLqjg0gL2ppfgBw&q=stockholm&oq=stockholm&gs_l=img.3..0l3j0i67l2j0l5.14496.15588..15785...0.0..0.111.489.8j1......1....1..gws-wiz-img.......35i39.mYdAMukMkk0#imgrc=-AZbo9ZqzLG4fM:")
p6=Post.create(title: "Canadian Rockies Hiking Trip", description: "Went on an epic 7 day backpacking trip through the candaian rockies. 10/10 would recommend", user: u2 , location: l2 , photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=X1y3XJCOLI290wLGoaSADg&q=canadian+rockies&oq=canadian+rockies&gs_l=img.3..0l10.25060.27553..27699...1.0..0.114.880.16j1......1....1..gws-wiz-img.......35i39j0i67.gV1A5Iig7hc#imgrc=ONkVHdhYNo_CEM:")
p7=Post.create(title: "Kathmandu, how you do", description: "Incredibly spiritual experience so close to the tallest mountain in the world. The people are so kind and genuine. Must do for the off the beaten path traveler", user: u4 , location: l9, photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=fFy3XOOBE-uo0gKTwaDACg&q=kathmandu&oq=kathmandu&gs_l=img.3..0l10.13110.13966..14165...0.0..0.59.432.9......1....1..gws-wiz-img.......35i39j0i67.ahOBR6y4rsM#imgrc=gl6unJo_E7mkRM:")
p8=Post.create(title: "The Land of Fire and Ice Stole My Heart", description: "Stopped over in Iceland thanks to Icelandair as I was on my way to Europe. This country is where fairy tales come from! Food is crazy expensive though", user: u1, location: l7 , photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=i1y3XNWRI8Ta0wKM5rKoDA&q=iceland&oq=iceland&gs_l=img.3..0l10.24744.25410..25496...0.0..0.54.322.7......1....1..gws-wiz-img.......35i39j0i67.-xkkTvXkx88#imgrc=gaYMISXJlq8_4M:")
p9=Post.create(title: "Bali Baby", description: "After spending a good part of this month in Bali during my year long adventure I have decided that I need to come back and live here", user: u5 , location: l7 , photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=ply3XNqZBMiX0gKh9abgBw&q=bali&oq=bali&gs_l=img.3..0i67l3j0l3j0i67j0l3.14557.16191..16424...3.0..0.53.384.8......1....1..gws-wiz-img.....0..35i39.S7NS07usBcQ#imgrc=4DDpgLSOPIyAsM:")
p10=Post.create(title: "Yank takes Straya", description: "From Bondi beach to the outback, I'm starting in Sydney and working my way around the land down unda", user: u4 , location: l8 , photo_url: "https://www.google.com/search?biw=1440&bih=821&tbm=isch&sa=1&ei=t1y3XNGTJIjm0gLLlLfgAw&q=sydney&oq=sydney&gs_l=img.3..0i67j0j0i67j0l2j0i67j0j0i67j0l2.19523.20309..20512...0.0..0.50.273.6......1....1..gws-wiz-img.......35i39.mt_fVPR4av4#imgrc=zU4MFWm42cZwJM:")


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
