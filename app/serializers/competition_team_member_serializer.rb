class CompetitionTeamMemberSerializer < ActiveModel::Serializer
  attributes  :first_name,
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
		      
  belongs_to :competition_teams
end
