FactoryGirl.define do 
  factory :rating, aliases: [:rating_as_user, :rating_as_artist] do
    association :user
    association :artist
    association :ratingable

    rating { (1..5).to_a.sample }

    # factory :not_an_artist do
    #   ratingable FactoryGirl.build(:non_artist)
    # end

  end
end