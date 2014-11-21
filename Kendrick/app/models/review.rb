class Review < ActiveRecord::Base
  belongs_to  :reviewer, class_name: "User"
  belongs_to  :artist, class_name: "User"

  has_many  :comments, class_name: "Review"

end