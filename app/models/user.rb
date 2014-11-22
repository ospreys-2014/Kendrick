class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :soundcloud_profile, allow_nil: true, format: { with: /https:\/\/soundcloud\.com\/.*?/ix }
  validates :email_address, presence: true
  validates_format_of :email_address, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_many  :ratings

  has_many  :reviews_as_reviewer, class_name: "Review", foreign_key: :reviewer_id
  has_many  :reviews_as_artist, class_name: "Review", foreign_key: :artist_id
  has_many  :comments, foreign_key: :commenter_id

  has_many  :artist_genres, foreign_key: :artist_id
  has_many  :genres, through: :artist_genres, as: :artist

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def reviews
    reviews_as_reviewer + reviews_as_artist
  end

end
