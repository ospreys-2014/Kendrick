class ArtistGenre < ActiveRecord::Base

  belongs_to  :artist, class_name: "User"
  belongs_to  :genre
end
