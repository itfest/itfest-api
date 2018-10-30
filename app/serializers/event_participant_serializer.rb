class EventParticipantSerializer < ActiveModel::Serializer
	belongs_to :event_participation_note

	attributes :id,
			   :first_name,
			   :last_name, 
			   :patronymic,
			   :university,
			   :speciality
end
