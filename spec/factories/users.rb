FactoryGirl.define do
  factory :user, aliases: [:artist, :reviewer, :commenter] do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email_address { Faker::Internet.free_email }
    soundcloud_profile { "https://soundcloud.com/whatisup" }
    
    factory :invalid_username do
      username nil
    end
    
    factory :invalid_password do
      password nil
    end

    factory :invalid_first_name do
      first_name nil
    end

    factory :invalid_last_name do
      last_name nil
    end

    factory :invalid_email_address do
      email_address nil
    end

    factory :invalid_soundcloud_profile do
      soundcloud_profile Faker::Internet.url
    end

    # after(:build) do |user|
    #   user.genres << FactoryGirl.build(:genre,
    #     genre: genre, artist: user)
    # end
  end
end