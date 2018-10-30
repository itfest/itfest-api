class CoachSerializer < ActiveModel::Serializer
    belongs_to :event_participation_note

    attributes :id,
  			   :first_name,
			   :last_name, 
			   :patronymic,
			   :workplace
    
end
