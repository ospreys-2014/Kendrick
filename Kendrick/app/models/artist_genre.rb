class ArtistGenre < ActiveRecord::Base

  belongs_to  :artist, class_name: "User", foreign_key: :user_id
  belongs_to  :genre
end
