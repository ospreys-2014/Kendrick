class GenreController < ApplicationController

  def show
    @genres = Genre.all
  end

end
