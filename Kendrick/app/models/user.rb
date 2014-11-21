class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true

  has_many  :ratings
  has_many  :reviews, foreign_key: :reviewer_id
  has_many  :comments, foreign_key: :commenter_id
  has_many  :artist_genres, foreign_key: :artist_id
  has_many  :genres, through: :artist_genres, as: :artist

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
