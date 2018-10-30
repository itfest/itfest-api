class EventParticipationNoteSerializer < ActiveModel::Serializer
  has_one :coach

  attributes :id,
  			 :first_name,
			 :last_name, 
			 :patronymic,
			 :university,
			 :speciality
end
