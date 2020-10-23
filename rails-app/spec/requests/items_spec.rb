require 'rails_helper'

describe 'Items API', type: :request do
  describe 'GET /items' do
    it 'returns a list of items' do
      get '/items'

      expect(JSON.parse(response.body)).to eq []
      expect(response).to have_http_status(200)
    end
  end
end
