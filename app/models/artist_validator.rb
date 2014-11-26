class ArtistValidator < ActiveModel::Validator
  # What's a record? What kind(s) of record should this validator be
  # used for? What is this method even checking for?
  #
  # Here's how you might rewrite it:
  # def validate(rating)
  #   user = User.find(rating.ratingable_id)
  #
  #   if !user.artist
  #     record.errors[:base] << "This user is not an artist."
  #   end
  # end
  def validate(record)
    user = find_user record.ratingable_id
    unless user.artist == true
      record.errors[:base] << "This user is not an artist."
    end
  end

  # This is such a small method that essential just flips the
  # existing AR .find. Better to use it in the validate method itself
  # (checkout )
  def find_user(id)
    User.find(id)
  end
end
