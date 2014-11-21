require 'rails_helper'

describe GenresController, type: :controller do
  let(:genre) { FactoryGirl.create :genre}

  describe 'GET #index' do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe 'GET #show' do
    it "renders the show_genre template" do
      get :show, id: genre
      expect(response).to render_template("show_genre")
    end
  end

end
