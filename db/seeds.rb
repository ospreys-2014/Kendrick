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
User.create(username: "HerpaTwerk", password: "123", first_name: "Herpz", last_name: "Merpz", email_address: "me@me.com", bio: "I play the cow-bell for quinceaneras :)", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
User.create(username: "MurkaZurk", password: "123", first_name: "Jim", last_name: "Brown", email_address: "me@me.com", bio: "Host me at your birthday parties!", soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)
User.create(username: "Mookz", password: "123", first_name: "Mookie", last_name: "Thompson", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "soundcloud.com", artist: true)
User.create(username: "DOM Sinatra", password: "123", first_name: "Kobe", last_name: "Bryant", email_address: "me@me.com", bio: Faker::Lorem.sentence, soundcloud_profile: "https://soundcloud.com/user211340458", artist: true)

Genre.create(name:"Jazz")
Genre.create(name:"Hip-Hop")
Genre.create(name:"Classical")
Genre.create(name:"50's")

ArtistGenre.create(artist_id:1, genre_id:1)
ArtistGenre.create(artist_id:2, genre_id:2)
ArtistGenre.create(artist_id:3, genre_id:3)
ArtistGenre.create(artist_id:4, genre_id:4)

5.times do
  Review.create(body: Faker::Lorem.sentence, artist: User.all.sample)
end

