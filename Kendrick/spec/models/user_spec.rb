require'rails_helper'

describe User do

  
  it "is invalid without a firstname"
  it "is invalid without a lastname"
  it "is invalid without an email address"
  it "is invalid with a duplicate email address"
  it "returns a contact's full name as a string"

  it "is valid with a username, password, first_name, last_name, and email_address" do
    user = FactoryGirl.build(:user)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_valid
  end

  it "is invalid if no username given" do
    user = FactoryGirl.build(:invalid_username)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_invalid
  end

  it "is invalid if no password given" do
    user = FactoryGirl.build(:invalid_password)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_invalid
  end

  it "is invalid if no password given" do
    user = FactoryGirl.build(:invalid_first_name)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_invalid
  end

  it "is invalid if no password given" do
    user = FactoryGirl.build(:invalid_last_name)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_invalid
  end

  it "is invalid if no password given" do
    user = FactoryGirl.build(:invalid_email_address)
    # user = User.new(
    #   username: 'hubba_bubba',
    #   password: 'asdf',
    #   first_name: 'Rob',
    #   last_name: 'Yang',
    #   email_address: 'herpaderpa@gmail.com')
    expect(user).to be_invalid
  end

end