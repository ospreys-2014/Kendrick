class RatingsController < ApplicationController

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.create(rating_params)
    
  end

  def show
    @rating = Rating.all
  end

  private

  def rating_params
    params.require(:rating).permit(:user_id, :rating, :ratingable_id, :ratingable_type)
  end
end
