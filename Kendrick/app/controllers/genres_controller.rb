class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render layout: false
  end

  def show
    genre = Genre.find(params[:id])
    @users = genre.artists
    render 'show_genre', layout: false
  end

end
