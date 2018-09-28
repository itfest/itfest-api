class CompetitionTeamMembersController < ApplicationController
  before_action :set_comp_team
  before_action :set_comp_team_member, only: [:show, :update, :destroy]

  def index
    json_response @competition_team.competition_team_members
  end

  def create
    @competition_team.competition_team_members.create!(comp_team_params)
    json_response @competition_team, :created
  end

  def show
    json_response @competition_team_member
  end

  def update
    @competition_team_member.update comp_team_params
    head :no_content  
  end

  def destroy
    @competition_team_member.destroy
    head :no_content  
  end

  private

  def comp_team_params
    params.permit :first_name, 
                  :last_name, 
                  :patronymic, 
                  :birthday,
                  :university, 
                  :speciality, 
                  :address,
                  :year_of_study, 
                  :group, 
                  :email, 
                  :phone
  end

  def set_comp_team
    @competition_team = CompetitionTeam.find params[:competition_team_id]
  end

  def set_comp_team_member
    @competition_team_member= @competition_team.competition_team_members.find_by!(id: params[:id]) if @competition_team
  end
end
