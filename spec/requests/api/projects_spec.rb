require 'rails_helper'

RSpec.describe 'Api::Projects', type: :request do
  describe 'GET /api/projects' do
    before do
      create_list(:project, 10)
    end

    it 'returns correct response' do
      get '/api/projects'

      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq Project.all.length
    end
  end
end
