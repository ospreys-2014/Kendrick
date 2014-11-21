FactoryGirl.define do 
  factory :review do
    association :reviewer
    association :artist
    body { Faker::Lorem.paragraph }

    factory :invalid_body do
      body nil
    end
  end
end