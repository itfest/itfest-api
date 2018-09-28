class CompetitionTeamsController < ApplicationController
  before_action :set_comp_team, only: [:show, :update, :destroy]

  def index
    @competition_teams = CompetitionTeam.all
    json_response @competition_teams
  end

  def create
    @competition_team = CompetitionTeam.create! comp_team_params
    json_response @competition_team, :created
  end

  def show
    json_response @competition_team
  end

  def update
    @competition_team.update comp_team_params
    head :no_content    
  end

  def destroy
    @competition_team.destroy
    head :no_content    
  end

  private

  def comp_team_params
    params.permit :name, :how_learned_about, :notes
  end

  def set_comp_team
    @competition_team = CompetitionTeam.find params[:id]
  end
end
