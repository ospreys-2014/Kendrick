class ArtistsController < ApplicationController

  def show
    @artists = Artist.all
    render partial: "index.html.erb", locals: {artists: @artists}
  end

end
