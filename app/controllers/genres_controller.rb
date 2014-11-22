class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    genre = Genre.find(params[:id])
    @users = genre.artists
    render 'show_genre'
  end

end
