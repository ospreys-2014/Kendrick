class Review < ActiveRecord::Base
  
  validates   :body, presence: true
  
  belongs_to  :reviewer, class_name: "User"
  belongs_to  :artist, class_name: "User"

  has_many  :comments, class_name: "Review"

end