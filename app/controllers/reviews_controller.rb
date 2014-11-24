class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(artist: @user.id)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(params[:review])
  end

  def create
    @review = Review.new(review_params)
    @review.artist = User.find(params[:review][:artist_id])
    @review.reviewer = User.find(params[:review][:reviewer_id])
    @review.save
    redirect_to(:back)
  end

  def update
    @review = Review.find(params[:id])
    @user = @review.artist

    if @review.update(review_params)
      redirect_to "/users/#{@user.id}"
    else
      render 'edit'
    end
  end

  def edit
    @review = Review.find(params[:id])

  end

  def destroy
    @review = Review.find(params[:id])
    @user = @review.artist
    @review.destroy

    redirect_to "/users/#{@user.id}"
  end


  private
    def review_params
      params.require(:review).permit(:body)
    end
end
