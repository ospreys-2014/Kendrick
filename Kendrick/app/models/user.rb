class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many  :ratings
  has_many  :reviews, foreign_key: :reviewer_id
  has_many  :comments, foreign_key: :commenter_id
  has_many  :artist_genres, foreign_key: :artist_id
  has_many  :genres, through: :artist_genres, as: :artist

end
