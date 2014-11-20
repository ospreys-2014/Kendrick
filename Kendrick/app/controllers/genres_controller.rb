class GenresController < ApplicationController

  def show
    @genres = Genre.all
  end

end
