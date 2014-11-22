require'rails_helper'

describe User do

  it "is valid with a username, password, first_name, last_name, email_address, and soundcloud profile" do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it "is invalid if no username given" do
    user = FactoryGirl.build(:invalid_username)
    expect(user).to be_invalid
  end

  it "is invalid if no password given" do
    user = FactoryGirl.build(:invalid_password)
    expect(user).to be_invalid
  end

  it "is invalid if no first name given" do
    user = FactoryGirl.build(:invalid_first_name)
    expect(user).to be_invalid
  end

  it "is invalid if no last name given" do
    user = FactoryGirl.build(:invalid_last_name)
    expect(user).to be_invalid
  end

  it "is invalid if no email address given" do
    user = FactoryGirl.build(:invalid_email_address)
    expect(user).to be_invalid
  end

  it "is invalid if url is not from soundcloud" do
    user = FactoryGirl.build(:invalid_soundcloud_profile)
    expect(user).to be_invalid
  end

  it "is valid if soundcloud profile is nil" do
    user = FactoryGirl.build(:nil_soundcloud_profile)
    expect(user).to be_valid
  end

  it "is valid if soundcloud profile is blank" do
    user = FactoryGirl.build(:blank_soundcloud_profile)
    expect(user).to be_valid
  end

  it "returns a contact's full name as a string" do
    user = FactoryGirl.build(:user)
    expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
  end


  it { should have_many(:genres) }
  it { should have_many(:reviews_as_reviewer) }

end

