FactoryGirl.define do
  factory :genre do
    name { Faker::Name.first_name }

    after(:build) do |genre|
      [:name].each do
  end
end
