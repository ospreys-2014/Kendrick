class RatingsController < ApplicationController

  def index
    @ratings = Rating.where(artist: @user.id)
  end

  def show
  end

  def new

  end

  def create
    @rating = Rating.new(rating_params)
    @rating.artist = User.find(params[:rating][:artist_id])
    @rating.reviewer = User.find(params[:rating][:reviewer_id])
    @rating.save
    redirect_to(:back)
  end

  private
    def rating_params
      params.require(:rating).permit(:helpful)
    end

end