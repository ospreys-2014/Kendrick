# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

user1 = User.create(username: "HerpaTwerk", password: "1", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
user2 = User.create(username: "MurkaZurk", password: "123", first_name: "Jim", last_name: "Brown", email_address: "me@me.com", bio: "Host me at your birthday parties!", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
user3 = User.create(username: "Mookz", password: "123", first_name: "Mookie", last_name: "Thompson", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "soundcloud.com", artist: true)
user4 = User.create(username: "DOM Sinatra", password: "123", first_name: "Kobe", last_name: "Bryant", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)

User.create(username: "rob1", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob2", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob3", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob4", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)

Genre.create(name:"Jazz",image_url:"http://www.centrestagelive.com.au/JAZZ_BANDS_files/trumpet-jazz-band.jpg")
Genre.create(name:"Hip-Hop",image_url:"http://4.bp.blogspot.com/-unuBVuxG_L0/UL50OkauvzI/AAAAAAAAQSI/pYk6IY7hEic/s1600/A+Tribe+Called+Quest+-+Check+The+Rhime+%5BHD-720p%5D+1991.jpg")
Genre.create(name:"Classical",image_url:"http://stuffwhitepeoplelike.files.wordpress.com/2008/09/classical.jpg")
Genre.create(name:"50's",image_url:"http://therecordingrevolution.com/wordpress/wp-content/uploads/2013/09/frank-sinatra-4de018e8e403b.jpg")
Genre.create(name:"Pop",image_url:"http://assets4.bigthink.com/system/idea_thumbnails/51363/headline/pop_music.jpg?1372097715")
Genre.create(name:"Opera",image_url:"https://scontent-b-atl.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1474422_10100237555598699_377043902_n.jpg?oh=f3d5cd59aed83a71ed40d24bdf651658&oe=551BC17C")
Genre.create(name:"R&B/Soul",image_url:"http://2.bp.blogspot.com/-7DQh6SMh5U0/UKn82-gBppI/AAAAAAABQPU/ml_peind-Xo/s640/soul_blue-1.jpg")
Genre.create(name:"K-Pop",image_url:"http://www.iwantcovers.com/wp-content/uploads/2012/01/SNSD2.jpg")
Genre.create(name:"Blues",image_url:"http://www.thejazzresource.com/images/bluesguitar.jpg")
Genre.create(name:"Screamo",image_url:"http://leatherrebelblog.com/wp-content/uploads/2013/01/blackveilbrides-screamo.jpg")
Genre.create(name:"Heavy Metal",image_url:"http://nme.assets.ipccdn.co.uk/images/gallery/2012HeavyMetalPA-14227379211212.jpg")
Genre.create(name:"Strictly Twerkin",image_url:"http://www.elektrodaily.com/wp-content/uploads/2013/08/twerk.jpg")

User.find(1).artist_genres.create(genre_id: 1)
User.find(2).artist_genres.create(genre_id: 2)
User.find(3).artist_genres.create(genre_id: 3)
User.find(4).artist_genres.create(genre_id: 4)

5.times do
  Review.create(body: Faker::Lorem.sentence, artist: User.all.sample, reviewer: User.all.sample)
end


