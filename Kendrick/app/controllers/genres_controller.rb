class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render partial: 'index.html', locals: {genres: @genres}
  end

end
