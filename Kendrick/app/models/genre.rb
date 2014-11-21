class Genre < ActiveRecord::Base

  validates :name, uniqueness: true

  has_many :artist_genres
  has_many :artists, through: :artist_genres, source: :user

end
