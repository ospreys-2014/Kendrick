FactoryGirl.define do 
  factory :review do
    association :user
    reviewer { build(:user) }
    body { Faker::Lorem.paragraph }


  end
end