class RatingsController < ApplicationController

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.create(rating_params)
    artist_id = params[:rating][:ratingable_id]
    redirect_to user_path(artist_id)
  end

  def show
    @rating = Rating.all
  end

  private

  def rating_params
    params.require(:rating).permit(:user_id, :rating, :ratingable_id, :ratingable_type)
  end
end
