class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render layout: false
  end

  def show
    @users = User.where(genre_id: params[:id])
    render 'show_genre'
  end

end
