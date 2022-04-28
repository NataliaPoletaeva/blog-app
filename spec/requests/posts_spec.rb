require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/0/posts'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is a page for showing list for post for a given user')
    end

    describe 'GET /show' do
      it 'returns show page' do
        get '/users/0/posts/show'
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
        expect(response.body).to include('Here is a page for showing details of the post for a given user')
      end
    end
  end
end
