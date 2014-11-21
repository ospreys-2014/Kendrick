
FactoryGirl.define do 
  factory :genre do
    name { Faker::Company.name }

    factory :invalid_genre do
      name nil
    end
end
