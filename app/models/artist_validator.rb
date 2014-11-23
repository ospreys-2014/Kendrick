class ArtistValidator < ActiveModel::Validator
  def validate(record)
    user = find_user record.ratingable_id
    unless user.artist == true
      record.errors[:base] << "This user is not an artist."
    end
  end


  def find_user(id)
    User.find(id)
  end
end