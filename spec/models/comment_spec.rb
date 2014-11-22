require 'rails_helper'

describe Comment do

  it "is valid with a commenter, review it is commenting, and body given" do
    user = FactoryGirl.build(:user)
    review = FactoryGirl.build(:review_as_reviewer)
    comment = FactoryGirl.create(:comment, review: review, commenter: user)

    expect(review).to be_valid
  end

  it "is invalid without a body given" do
    comment = FactoryGirl.build(:invalid_comment_body)
    expect(comment).to be_invalid
  end

  it "is invalid without referencing a review" do
    user = FactoryGirl.create(:user)
    comment = user.comments.create(body: "test")

    expect(comment).to be_invalid
  end

  it "is invalid without referencing a reviewer" do
    review = FactoryGirl.build(:invalid_reviewer)
    expect(review).to be_invalid
  end

end

