require 'pry'
class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :soundcloud_profile,
            allow_nil: true,
            allow_blank: true,
            format: { with: /https:\/\/soundcloud\.com\/.*?/ix }
  validates :email_address, presence: true
  validates_format_of :email_address, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # Again, don't leave commented out code in master
  # validates :genres, presence: true, if: :artist

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, :default_url => "/tat.jpg"


  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # The comments on the below associations are *not* good way to
  # communicate the meaning of your code. It demonstrates a need to
  # create a better or clearer lexicon for your custom associations
  # (e.g. `:given_rating`, `:received_rating`).

  # ratings_as_user means that you are the user giving ratings
  # on reviews, comments, or artists
  has_many  :ratings_as_user, class_name: "Rating", foreign_key: :user_id

  # ratings_as_artist means that you are the artist who
  # is receiving many ratings (like you are a review or comment)
  has_many  :ratings_as_artist, class_name: "Rating", foreign_key: :artist_id


  # reviews_as_reviewer means you are giving a review as a user
  has_many  :reviews_as_reviewer, class_name: "Review", foreign_key: :reviewer_id

  # reviews_as_artist means you are receiving reviews
  # as the artist being reviewed about
  has_many  :reviews_as_artist, class_name: "Review", foreign_key: :artist_id

  has_many  :comments, foreign_key: :commenter_id

  has_many  :artist_genres, foreign_key: :artist_id
  has_many  :genres, through: :artist_genres, as: :artist

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def reviews
    # You don't seem to be using this method anywhere. Did it have a purpose?
    reviews_as_reviewer + reviews_as_artist
  end


  def assign_genre(genres)
    if self.artist
      genres.each do |genre|
        # Good use of the AR association#create method
        self.artist_genres.create(genre_id: genre[1])
      end
    end
  end

  def total_reviews_created
    self.reviews_as_reviewer.count
  end

  def total_reviews_received
    self.reviews_as_artist.count
  end

end
