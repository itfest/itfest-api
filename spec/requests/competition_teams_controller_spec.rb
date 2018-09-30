require 'rails_helper'

RSpec.describe 'competition_teams', type: :request do

  let!(:competition_teams) { create_list(:competition_team, 5) }
  let(:competition_team_id) { competition_teams.first.id }

  describe 'GET /competition_teams' do

    before { get "/competition_teams" }

    it 'returns competition_teams' do
      expect(json).not_to be_empty
      expect(json['data'].size).to eq(5)
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end

  end

  describe 'GET /competition_teams/:id' do 
    
    before { get "/competition_teams/#{competition_team_id}" }

    context 'json exists' do

      it 'returns competition_teams' do 
        expect(json).not_to be_empty
        expect(json['data']['id']).to eq(competition_team_id)
      end

      it 'returns 200' do 
        expect(response).to have_http_status(200)
      end

    end

    context 'json doesnt exist' do 

      let(:competition_team_id) { 100 }

      it 'returns 404' do 
        expect(response).to have_http_status(404)
      end

      it 'returns NOT FOUND' do 
        expect(response.body).to match(/Couldn't find/)
      end
    end
  end

  describe 'POST /competition_teams' do

    context 'valid post request' do 

      let(:valid_attributes) {{name:'Alex'}}

      before {post "/competition_teams",params: valid_attributes}

      it 'creates competition_teams' do
        expect(json['data']['name']).to eq('Alex')
      end

      it 'returns 201' do
        expect(response).to have_http_status(201)
      end

    end
    
    context 'invalid post request' do 

      let(:invalid_attributes) {{name: 'BadName'}}

      before {post "/competition_teams",params: invalid_attributes}

      it 'returns validation failure' do
        expect(json['data']['name']).to eq('BadName')
      end

      it 'returns 201' do
        expect(response).to have_http_status(201)
      end

    end
  end

  describe 'PUT /competition_teams/:id' do 

    let(:valid_attributes) {{name: "Alex"}}

    context 'json exists' do
      before {put "/competition_teams/#{competition_team_id}", params: valid_attributes}

      it 'updates json' do
        expect(response.body).to be_empty
      end

      it 'returns 204' do 
        expect(response).to have_http_status(204)
      end

    end

  end

  describe 'DELETE /competition_teams/:id' do
    
    before {delete "/competition_teams/#{competition_team_id}"}

    it 'returns 204'do
      expect(response).to have_http_status(204)
    end
  end
end
