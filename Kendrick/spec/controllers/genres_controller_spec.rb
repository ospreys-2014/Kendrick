require 'rails_helper'

describe GenresController, type: :controller do

  describe 'GET #show' do
    it "renders the show_genre template" do
      get :show
      expect(response).to render_template :show_genre
    end

    it "assigns the requested genre to @genre" do
      genre = FactoryGirl.create(:genre)
      get :show, id: genre
      expect(assigns(:genre)).to eq genre
    end
  end
end
