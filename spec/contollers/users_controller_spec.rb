require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    context 'when request is html' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'returns http success' do
      post :create, user: {first_name: 'first', last_name: 'last'}
      expect(response).to have_http_status(:success)
    end
  end
end