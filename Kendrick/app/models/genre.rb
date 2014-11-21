class Genre < ActiveRecord::Base

  validates :name, uniqueness: true
  has_many :artists, through: :artist_genres, foreign_key: :user_id
end
