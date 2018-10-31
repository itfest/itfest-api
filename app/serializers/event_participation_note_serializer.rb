class EventParticipationNoteSerializer < ActiveModel::Serializer
	attributes :id
	has_one :coach
	has_many :event_participants

	has_many :question_answers
	has_many :question_lists, :through => :question_answers
end
