class Comment < ActiveRecord::Base
  
  validates   :body, presence: true
  validates   :commenter, presence: true
  validates   :review, presence: true
  
  belongs_to  :commenter, class_name: "User"
  belongs_to  :review

  has_many    :ratings, as: :ratingable

end