class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(artist: @user.artist)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(params[:review])
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
  end



  private
    def review_params
      params.require(:review).permit(:body)
    end
end
