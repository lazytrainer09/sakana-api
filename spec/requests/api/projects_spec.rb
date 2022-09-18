require 'rails_helper'

RSpec.describe 'Api::Projects', type: :request do
  describe 'GET /api/projects' do
    let(:json_data_count) { JSON.parse(response.body).length }

    before do
      create_list(:project, 10)
      get '/api/projects'
    end

    it { expect(response).to have_http_status(:success) }
    it { expect(json_data_count).to eq Project.count }
  end
end
