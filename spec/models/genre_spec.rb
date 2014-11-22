require 'rails_helper'

describe Genre do

  it "is valid with a name given" do
    genre = FactoryGirl.build(:genre)
    expect(genre).to be_valid
  end

  it "is invalid without a name given" do
    genre = FactoryGirl.build(:invalid_genre)
    expect(genre).to be_invalid
  end

  it { should have_many(:artists) }
  it { should_not have_many(:users) }
  it { should have_many(:artist_genres) }
end

