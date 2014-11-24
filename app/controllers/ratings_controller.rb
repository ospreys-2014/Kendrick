class RatingsController < ApplicationController

  def index
    @ratings = Rating.where(artist: @user.id)
  end

  def show
  end

  def new

  end

  def create

  end

end