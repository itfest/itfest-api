class CompetitionTeamsController < ApplicationController
  before_action :set_comp_team, only: [:show, :update, :destroy]

  def index
    @competition_teams = CompetitionTeam.all
    json_response @competition_teams
  end

  def create
    @competition_team = CompetitionTeam.create! competition_team_params
    json_response @competition_team, :created
  end

  def show
    json_response @competition_team
  end

  def update
    @competition_team.update competition_team_params
    head :no_content    
  end

  def destroy
    @competition_team.destroy
    head :no_content    
  end

  private

  def competition_team_params
  params.require(:competition_team).permit(
    :name,
    :how_learned_about,
    :notes, 

    competition_team_members_attributes:[

        :first_name,
        :last_name,
        :patronymic,
        :birthdate,
        :university,
        :speciality,
        :group,
        :year_of_study,
        :address,
        :email,
        :phone
      ],
    competition_team_coach_attributes: [

        :first_name,
        :last_name,
        :patronymic,
        :birthdate,
        :workplace,
        :position,
        :address,
        :soc_media,
        :email,
        :phone

    ]

    )

  end

  def set_comp_team
    @competition_team = CompetitionTeam.find params[:id]
  end
end
