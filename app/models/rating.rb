class Rating < ActiveRecord::Base

  validates_with  ArtistValidator

  belongs_to  :user
  belongs_to  :artist, class_name: "User"
  belongs_to  :ratingable, polymorphic: true
end