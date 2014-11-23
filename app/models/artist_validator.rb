class ArtistValidator < ActiveModel::Validator
  def validate(record)
    if record.artist == false
      record.errors[:base] << "This user is not an artist."
    end
  end
end