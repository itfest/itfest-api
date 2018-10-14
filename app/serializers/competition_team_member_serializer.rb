class CompetitionTeamMemberSerializer < ActiveModel::Serializer
  attributes  :first_name,
		      :last_name,
		      :patronymic,
		      :university     
  belongs_to :competition_teams
end
