require 'rails_helper'

describe 'Users API', type: :request do
  describe 'GET /users' do
    it 'returns a list of users' do
      get '/users'

      expect(JSON.parse(response.body)).to eq []
      expect(response).to have_http_status(200)
    end
  end
end
