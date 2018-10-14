class CompetitionTeamCoachSerializer < ActiveModel::Serializer
	attributes  :first_name,
				:last_name,
				:patronymic
  	belongs_to :competition_team
end
