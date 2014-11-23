class Rating < ActiveRecord::Base

  validates_numericality_of :rating, 
                            allow_nil: true,
                            allow_blank: true,
                            only_integer: true, 
                            greater_than_or_equal_to: 1,
                            less_than_or_equal_to: 5
  validates_with  ArtistValidator
                            
  belongs_to  :user
  belongs_to  :artist, class_name: "User"
  belongs_to  :ratingable, polymorphic: true
end