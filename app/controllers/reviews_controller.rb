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
    # Again, permit the associations and you won't need these
    # next two lines of code.
    @review.artist = User.find(params[:review][:artist_id])
    @review.reviewer = User.find(params[:review][:reviewer_id])
    @review.save
    redirect_to(:back)
  end

  def update
    @review = Review.find(params[:id])
    @user = @review.artist

    if @review.update(review_params)
      # Please use a named route here (e.g. user_path(@user))
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
    respond_to do |format|
      format.js do
        render nothing: true
      end
      # Why format.any over format.html?
      format.any do
        # Good indentation practices help avoid issues like unclosed blocks.
        redirect_to "/users/#{@user.id}"
      end
    end
  end


  private
    def review_params
      params.require(:review).permit(:body)
    end
end
