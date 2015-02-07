class RatingsController < ApplicationController

  respond_to :html, :js, :json

  def new
    @rating = Rating.new
  end

  def create
    p "*"*300
    @rating = Rating.create(rating_params)
    p "*"*200
    p params[:rating][:ratingable_id]
    p "*"*200
    artist_id = params[:rating][:ratingable_id]
    @average_rating = Rating.average_rating_for(User.find(artist_id))

    # respond_to do |format|

    #   format.html { redirect_to user_path(artist_id) }
    #   format.json { render json: @average_rating }

    # end

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

