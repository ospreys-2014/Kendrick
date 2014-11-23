# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# 5.times do
#   User.create(username: Faker::Name.name, password: "123", first_name: Faker::Name.name, last_name: Faker::Name.name, email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "soundcloud.com", artist: true )
# end
user1 = User.create(username: "HerpaTwerk", password: "123", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
user2 = User.create(username: "MurkaZurk", password: "123", first_name: "Jim", last_name: "Brown", email_address: "me@me.com", bio: "Host me at your birthday parties!", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
user3 = User.create(username: "Mookz", password: "123", first_name: "Mookie", last_name: "Thompson", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "soundcloud.com", artist: true)
user4 = User.create(username: "DOM Sinatra", password: "123", first_name: "Kobe", last_name: "Bryant", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)

User.create(username: "rob1", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob2", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob3", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)
User.create(username: "rob4", password: "asdf", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: false)

Genre.create(name:"Jazz")
Genre.create(name:"Hip-Hop")
Genre.create(name:"Classical")
Genre.create(name:"50's")

User.find(1).artist_genres.create(genre_id: 1)
User.find(2).artist_genres.create(genre_id: 2)
User.find(3).artist_genres.create(genre_id: 3)
User.find(4).artist_genres.create(genre_id: 4)

# ArtistGenre.create(artist_id:1, genre_id:1)
# ArtistGenre.create(artist_id:2, genre_id:2)
# ArtistGenre.create(artist_id:3, genre_id:3)
# ArtistGenre.create(artist_id:4, genre_id:4)


5.times do
  Review.create(body: Faker::Lorem.sentence, artist: User.all.sample, reviewer: User.all.sample)
end


