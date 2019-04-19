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

l11 = Location.create(country: "China", city: "Shanghai")
l12 = Location.create(country: "Denmark", city: "Copenhagen")
l13 = Location.create(country: "England", city: "London")
l14 = Location.create(country: "Scotland", city: "Highlands")
l15 = Location.create(country: "Peru", city: "Machu Picchu")
l16 = Location.create(country: "Columbia", city: "Cartagena")
l17 = Location.create(country: "Thailand", city: "Bangkok")
l18 = Location.create(country: "India", city: "New Delhi")
l19 = Location.create(country: "Sri Lanka", city: "Negombo")
l20 = Location.create(country: "Spain", city: "San Sebastian")
l21 = Location.create(country: "Morocco", city: "Marrakesh")
l22 = Location.create(country: "Costa Rica", city: "Montezuma")
l23 = Location.create(country: "Japan", city: "Hokkaido")

puts "Seeding Users..."
u1 = User.create(username: "Sofia", password: "hello", bio: "I'm just here for the international dog pics", photo_url: "https://amp.businessinsider.com/images/597fe3164528e672188b5bd9-750-562.jpg")
u2= User.create(username: "Mera", password: "hello", bio: "Hi, my name Mera. I like to travel", photo_url: "https://vignette.wikia.nocookie.net/newdcmovieuniverse/images/7/7b/Mera1.PNG/revision/latest?cb=20190207195251")
u3 = User.create(username: "Doug", password: "hello", bio: "Looking for good coffee, and good beer", photo_url: "https://radiowest.kuer.org/sites/radiowest/files/styles/x_large/public/201606/doug_web4.jpg")
u4 = User.create(username: "Rylan", password: "hello", bio: "I'm just a living dream", photo_url: "http://coolmenshair.com/wp-content/uploads/rylan-clark-hair_zps1a4be35b.jpg")
u5 = User.create(username: "Lotti", password: "hello", bio: "Always on the hunt for the best treats", photo_url: "https://towsontigers.com/images/2018/8/22/Lotti_Sam.JPG?width=300")
u6 = User.create(username: "Milo", password: "hello", bio: "Bird Afficionado, traveling the world looking for the coolest birds!", photo_url: "http://www.thebeardmag.com/wp-content/uploads/7c3e6c50d78259d530b7d703501c8c99.jpg")


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
p10=Post.create(title: "Yank Down unda", description: "From Bondi beach to the outback, I'm starting in Sydney and working my way around the land down unda", user: u4 , location: l10 , photo_url: "https://australiansurftours.com.au/wp-content/uploads/2017/12/travelling-to-australia.jpg")

p11=Post.create(title: "What's Shanking Shanghai", description: "Shanghai, on China’s central coast, is the country's biggest city and a global financial hub. Its heart is the Bund, a famed waterfront promenade lined with colonial-era buildings. Across the Huangpu River rises the Pudong district’s futuristic skyline, including 632m Shanghai Tower and the Oriental Pearl TV Tower, with distinctive pink spheres. Sprawling Yu Garden has traditional pavilions, towers and ponds.", user: u4 , location: l11 , photo_url: "https://www.costacruises.com/content/dam/costa/inventory-assets/ports/SHA/sha-shanghai-port-1.jpg.image.750.563.low.jpg")
p12= Post.create(title: "Smorrebrod in Denmark", description: "Smørrebrød is a traditional Scandinavian open-faced sandwich that usually consists of a piece of buttered rye bread, a dense, dark brown bread, topped with commercial or homemade cold cuts, pieces of meat or fish, cheese or spreads, and garnishes.", user: u2, location: l12 , photo_url: "https://www.visitdenmark.com/sites/default/files/VDK_Website_images/Tourist_content/Food_restaurants_cafes_bars/smorrebrod_lunchbox.jpg")
p13=Post.create(title: "London Calling", description: "ENGLAND is famous for many things - David Beckham, Fish and Chips, Big Ben, Red Buses, black cabs, Oasis, Blur, the Beatles, London and tea. Windsor Castle is the oldest royal residence still in use. England is famous for its educational institutes. ... England is famous for William Shakespeare.", user: u3 , location: l13 , photo_url: "https://developmentfinancetoday.co.uk/cms/upload/image/dab1446036562_973_ThinkstockPhotos-451984831.jpg")
p14=Post.create(title: "Outlander fan's dream come true!", description: "The Scottish Highlands are a mountainous region encompassing northwest Scotland. Loch Ness is at the centre, overlooked by the ruins of medieval Urquhart Castle and known for mythical monster “Nessie”. Northeast, near the city of Inverness, dolphins swim in the Moray Firth. Southwest, in the Western Highlands, trails wind up Ben Nevis, the U.K.’s highest peak, and red deer roam Glencoe valley with its waterfalls.", user: u5, location: l14 , photo_url: "http://www.luxetravel.com/wp-content/uploads/2012/10/isle-of-skye.jpg")
p15=Post.create(title: "One of the Seven Wonders Of the World", description: "Due to its location high in the mountains, every day until roughly midday a blanket of mist covers Machu Picchu. This creates the feeling of floating amongst the clouds. However, legend has it that at night, spirits rise from the ground and try to take people away. To protect against this, most porters will sleep with a mirror or a shiny piece of metal beneath them. So, watch out!!", user: u1 , location: l15 , photo_url: "http://www.traveller.com.au/content/dam/images/h/0/y/4/g/m/image.related.articleLeadwide.620x349.h0y4gf.png/1536974460911.jpg")
p16=Post.create(title: "Narcos Fan Takes Cartagena", description: "You got me, that was total clickbait. Narcos is a great show and all but there is SO much more to Columbia! It is no longer the dangerous drug capital we all remember (from real life or tv shows) and it is well worth visiting. The people are so amazgin and don't even get me started on the food. Here's a picture of me wandering the streets looking for some platanos maduros. Ay que delicioso!", user: u2 , location: l16 , photo_url: "https://www.tripsavvy.com/thmb/r8E5QJTBYDNHXhIEkkQNSA8_I20=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/street-with-buildings-in-background-748580477-5bce38b0c9e77c00519dae4a.jpg")
p17=Post.create(title: "One Night in Bangkok", description: "Thailand's islands and beaches may be the ultimate places for a blissed-out break. But its capital Bangkok stands in stark contrast, a nonstop whirl of street-food ..", user: u4 , location: l17, photo_url: "https://www.visa.com.sg/dam/VCOM/regional/ap/Marquees/marquee-destinations-bangkok-640x640.jpg")
p18=Post.create(title: "My New Delhi Trip", description: "There are a number of legends associated with the origin of the name Delhi. The most common view is that the name originates from Raja Dhilu or Dilu, a king of Mauryan Dynasty who reigned in the first century B.C. and named the city after himself.", user: u1, location: l18 , photo_url: "http://bellaprana.com/wp-content/uploads/2015/04/Optimized-dehli.jpg")
p19=Post.create(title: "Traveling through Negombo Sri Lanka ", description: "Agurukaramulla temple” is a famous Buddhist temple bringing Buddhists from all over Sri Lanka to Negombo every year.The wide sandy beaches and the safe sea are the major tourist attractions of Negombo, while many tourists use the town for the first or the last night of their stay in Sri Lanka.", user: u5 , location: l19 , photo_url: "https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/09/Negombo-Village.jpg")
p20=Post.create(title: "Siesta in San Sebastian", description: "From Bondi beach to the outback, I'm starting in Sydney and working my way around the land down unda", user: u4 , location: l20 , photo_url: "http://winederlusting.com/wp-content/uploads/2016/06/things-to-do-in-san-sebastian-spain-1024x1024.jpg")

p21=Post.create(title: "Marrakesh Camel Ride", description: "They’re staking their positions for sunset, a spectacular display all the way out here in this endless sandpit. As we ride to join the group already in position, the sun casts elongated shadows of our camels against a neighbouring dune, making us all look like giants riding domesticated dinosaurs – or those lumbering AT-AT Walkers from Star Wars. I’m travelling in a camel caravan through the sands of the Sahara, en route to our desert camp where we’ll be spending the night.", user: u4 , location: l21 , photo_url: "https://angieaway.com/wp-content/uploads/2013/08/IMG_0744.jpg")
p22= Post.create(title: "Pura Vida", description: "Montezuma is a town in the southern part of Costa Rica’s Nicoya Peninsula. It’s known for its long stretch of white-sand beach, Playa Montezuma. To the northeast, a trail leads through jungle and around coves to Playa Grande, a popular surf beach. Behind the beach is Romelia Wildlife Reserve, a turtle sanctuary and hatchery. Montezuma Waterfall comprises a series of cascades and natural pools.", user: u6, location: l22 , photo_url: "https://cdn.costaricaexperts.com/wp-content/uploads/2014/05/Best-Birding-Destinations-in-Costa-Rica.jpg")
p23=Post.create(title: "Canyoneering Through the Grandest Canyon", description: "Went on an epic month long rafting trip through the Grand Canyon. We were so lucky that we got permits, felt like winning the lottery!", user: u6 , location: l2 , photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCnT3oOnJ9ttpZHrEXA9Rkt_DUc5rsd-nvty-ePnJhhw4kLxEz5g")
p24=Post.create(title: "Japow in Hokkaido", description: "Hokkaido was a dream come true! I've been wanting to ski in Japan for the longest time and I'm so glad I was able to make that dream a reality.", user: u6, location: l23 , photo_url: "http://www.furanotourism.com/spro_cms/upimg/l/20171018130220209_43777.jpg")
p25=Post.create(title: "Sufs Up", description: "Finally starting to feel like I'm getting the hang of the slash! I've been having the time of my life learning to surf down here!", user: u2 , location: l8 , photo_url: "http://coffeelab.com.br/wp-content/uploads/2014/10/coffee-lab-gabriel-cabral1.jpeg")
p26=Post.create(title: "Swedish Colors", description: "Incredible colors on one of the most famous buildings in Stockholm.", user: u3 , location: l5 , photo_url: "https://cdn.newsapi.com.au/image/v1/00304aa6fc1872dc2d652c5a0aa514fe?width=1024")
p27=Post.create(title: "Rocky, but Tranquil", description: "The Canadian Rockies mountain range spans the provinces of British Columbia and Alberta. With jagged, ice-capped peaks, including towering Mt. Robson, it's a region of alpine lakes, diverse wildlife and outdoor recreation sites. Yoho National Park is home to the massive Takakkaw Falls. Other national parks are Jasper, with the famously accessible Athabasca Glacier, and Banff, site of glacier-fed Lake Louise.", user: u4 , location: l2 , photo_url: "http://www.holidaybug.co.za/wp-content/uploads/2016/05/banff-national-park-canada-jack-lake-forest-mountains-sky-sunset_1920x1200-1024x640.jpg")
p28=Post.create(title: "Peace be with you", description: "Most Sherpa people live in the eastern regions of Nepal; however, some live farther west in the Rolwaling Valley and in the Helambu region north of Kathmandu. Sherpas had village gompas (temples) where they practised their religious traditions. Tengboche was the first celibate monastery in Solu-Khumbu.", user: u6 , location: l9, photo_url: "https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/11/cover-for-kathmandu.jpg")
p29=Post.create(title: "Icelandic Relaxation", description: "Make sure to check out the Blue Lagoon during your stopover in Iceland! It's super close to the airport so even if you have a few hours to spare between flights I highly recommend it!", user: u5, location: l7 , photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxU0rDtQUL17h99ci3T4NNQhkqBH1dg0hhmUQq5Sfub9h6TUx1dA")
p30=Post.create(title: "Gates to Heaven", description: "Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple. To the south, the beachside city of Kuta has lively bars, while Seminyak, Sanur and Nusa Dua are popular resort towns. The island is also known for its yoga and meditation retreats.", user: u1 , location: l7 , photo_url: "https://www.holidaypirates.com/fileadmin/SEO/images/Bali/Urlaub_Bali_Tipps_angebote_-_Pura_Lembuyang_-_das_Tor_zum_Himmel.jpg")


puts "Seeding Comments..."
  c1=Comment.create(text: "Oh my goodness, what a spiritual experience", user: u1 , post: p7 )
  c2=Comment.create(text: "Sick! Did you guys get a guide?", user: u1, post:  p2)
  c3=Comment.create(text: "Bali looks soo amazing, I can't wait to go", user: u2, post: p9)
  c4=Comment.create(text: "Can you make a followup post to deepdive into the coffee trade?", user: u2, post: p4)
	c5=Comment.create(text: "How was the herring?", user: u3, post: p5)
	c6=Comment.create(text: "So incredibly beautiful!!", user: u3, post: p6)
	c7=Comment.create(text: "How long did the ring road drive take you?", user: u4, post: p8)
	c8=Comment.create(text: "Did you pet a kangaroo during your trip?", user: u4, post: p10)
	c9=Comment.create(text: "What was your tastiest treat?", user: u5, post: p3)
	c10=Comment.create(text: "That looks like such a great trip", user: u5, post: p1)
