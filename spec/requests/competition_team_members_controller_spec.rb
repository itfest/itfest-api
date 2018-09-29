require 'rails_helper'

RSpec.describe 'comp_team_member', type: :request do
  
  let!(:competition_team) { create(:competition_team) }
  let!(:competition_team_members) { create_list(:competition_team_member,10, competition_team_id: competition_team.id)}

  let(:competition_team_id) { competition_team.id }
  let(:id) { competition_team_members.first.id }


  describe 'GET /competition_teams/:competition_team_id/competition_team_members' do

    before { get "/competition_teams/#{competition_team_id}/competition_team_members" }

    context 'competition_team exists' do

      it 'returns all competition_team_members' do
        expect(json['data'].size).to eq(10)
      end

      it 'returns 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'competition_team doesnt exists' do

      let(:competition_team_id) { 0 }

      it 'returns NOT FOUND' do
        expect(response.body).to match(/Couldn't find CompetitionTeam/)
      end

      it 'returns 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'GET /competition_teams/:competition_team_id/competition_team_members/:id' do

    before { get "/competition_teams/#{competition_team_id}/competition_team_members/#{id}"}

    context 'competition_team_member exists' do

      it 'returns competition_team_member' do
        expect(json['data']['id']).to eq(id)
      end

      it 'returns 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'competition_team_member doesnt exists' do

      let(:id) { 0 }

      it 'returns NOT FOUND' do
        expect(response.body).to match(/Couldn't find CompetitionTeam/)
      end

      it 'returns 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'DELETE /competition_teams/:id' do 

    before {delete "/competition_teams/#{competition_team_id}/competition_team_members/#{id}"}

    it 'returns 204' do
      expect(response).to have_http_status(204)
    end

  end

end
