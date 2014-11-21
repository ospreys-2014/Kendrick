class ArtistsController < ApplicationController

  def show
    @artists = Artist.all
  end

end
