class Review < ActiveRecord::Base

  validates   :body, presence: true
  validates   :reviewer, presence: true
  validates   :artist, presence: true

  belongs_to  :reviewer, class_name: "User"
  belongs_to  :artist, class_name: "User"

  has_many  :comments

end
