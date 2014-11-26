require 'rails_helper'
# Not sure why this isn't in the existing User spec inside of a
# `context "user authentication"` block.
describe User do

  describe "passwords" do
    it "needs a password and confirmation to save" do
      u = User.new(username: "steve", first_name: "steve", last_name: "jobin", email_address: "123@gmail.com", password: "123", password_confirmation: "123")
      u.save
      expect(u).to be_valid
    end
  end

  it "needs password and confirmation to match" do
    u = User.create(
    username: "steve",
    password: "hunter2",
    password_confirmation: "hunter")
    expect(u).to_not be_valid
  end

  describe "authentication" do

    let(:user) { User.create(
    username: "steve",
    password: "hunter2",
    password_confirmation: "hunter2") }

    it "authenticates with a correct password" do
      expect(user.authenticate("hunter2")).to be
    end

    it "does not authenticate with an incorrect password" do
      expect(user.authenticate("hunter1")).to_not be
    end
  end

end

