class EventParticipationNoteSerializer < ActiveModel::Serializer
  attributes :id,
  			 :first_name,
			 :last_name, 
			 :patronymic,
			 :university,
			 :speciality
  has_one :coach
end
