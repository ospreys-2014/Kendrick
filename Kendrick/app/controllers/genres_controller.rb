class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render partial: 'index.html', locals: {genres: @genres}
  end

  def show
    genre = Genre.find(params[:id])
    @users = User.where(genre)
    render partial: 'show_genre.html', locals: {users: @users}
  end

end
