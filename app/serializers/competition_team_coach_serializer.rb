class CompetitionTeamCoachSerializer < ActiveModel::Serializer
	attributes  :first_name,
				:last_name,
				:patronymic,
				:birthdate,
				:workplace,
				:position,
				:address,
				:soc_media,
				:email,
				:phone
  	belongs_to :competition_team
end
