FactoryGirl.define do 
  factory :review, aliases: [:review_as_reviewer, :review_as_artist] do
    association :reviewer
    association :artist

    body { Faker::Lorem.paragraph }

    factory :invalid_review_body do
      body nil
    end

    factory :invalid_reviewer do
      reviewer nil
    end

  end
end