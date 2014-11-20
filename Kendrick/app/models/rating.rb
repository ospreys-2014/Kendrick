class Rating < ActiveRecord::Base

  belongs_to  :user
  belongs_to  :artist, class_name: "User"
  belongs_to  :ratingable, polymorphic: true
  
end