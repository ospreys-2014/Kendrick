FactoryGirl.define do 
  factory :comment do
    association :commenter
    association :review
    body { Faker::Lorem.paragraph }

    factory :invalid_comment_body do
      body nil
    end

    factory :invalid_commenter do
      reviewer nil
    end

  end
end