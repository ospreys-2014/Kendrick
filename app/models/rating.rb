class Rating < ActiveRecord::Base
  # Exploring custom validations?? Get it!
  validates_with  ArtistValidator
  # Don't leave commented out code in master.
  # validates :helpful, presence: true

  belongs_to  :user
  belongs_to  :artist, class_name: "User"
  belongs_to  :ratingable, polymorphic: true

  def self.average_rating_for(object)
    self.find_ratings_for(object)
    self.array_of_rating_scores
    self.average.round(1)
  end

  def self.find_ratings_for(object)
    @ratings_objects = self.where(ratingable: object)
  end

  private

  def self.array_of_rating_scores
    # Woohoo, great use of map!
    @ratings_objects.map do |rating_object|
      rating_object.rating
    end
  end

  def self.average
    array_of_rating_scores.reduce(:+).to_f / array_of_rating_scores.count.to_f
  end

end
