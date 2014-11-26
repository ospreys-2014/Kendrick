require 'rails_helper'

describe ReviewsController do

  # Indentation = an easy way to debugging easy and keep other devs on your
  # team happy.
  describe 'GET #show' do
    it 'assigns the requested review to @review' do
      review = FactoryGirl.create(:review)
      get :show, id: review
      expect(assigns(:review)).to eq review
    end

    it 'renders the :show template' do
      review = FactoryGirl.create(:review)
      get :show, id: review
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it 'assigns the new Review to @review' do
      get :new
      expect(assigns(:review)).to be_a_new(Review)
    end

    it 'renders the :new template' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    before(:each) { post :create, review: FactoryGirl.attributes_for(:review)}


    context 'with valid attributes' do
      let(:review_attrs) {attributes_for(:review)}

      it 'successful' do
        expect(response).to be_success
      end

      it 'saves the new contact in the database' do
        expect {
          post :create, review: attributes_for(:review,
            reviews_attributes: @review)
        }.to change(Review, :count).by(1)
      end
    end
  end
end
