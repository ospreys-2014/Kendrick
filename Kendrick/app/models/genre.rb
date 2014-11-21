class Genre < ActiveRecord::Base

  validates :name, uniqueness: true, presence: true

  has_many :artist_genres
  has_many :artists, through: :artist_genres

end
