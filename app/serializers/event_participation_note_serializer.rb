class EventParticipationNoteSerializer < ActiveModel::Serializer
  belongs_to :event
  attributes :first_name,
			 :last_name, 
			 :patronymic,
			 :university,
			 :speciality
end
