require 'rails_helper'

describe Review do

  it "is valid with a reviewer, artist being reviewed, and body given" do
    user = FactoryGirl.build(:user)
    artist = FactoryGirl.build(:user) 
    review = user.reviews.build(:review)
    expect(review).to be_valid
  end

  it "is invalid without a body given" do
    genre = FactoryGirl.build(:invalid_body)
    expect(genre).to be_invalid
  end

  it { should have_many(:comments) }
end

