class CoachSerializer < ActiveModel::Serializer
    attributes :id,
  			 :first_name,
			 :last_name, 
			 :patronymic,
			 :workplace
    belongs_to :event_participation_note
end
