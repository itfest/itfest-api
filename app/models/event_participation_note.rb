class EventParticipationNote < ApplicationRecord
	belongs_to :event

	has_one    :coach
	has_many   :event_participants

	accepts_nested_attributes_for :coach
	accepts_nested_attributes_for :event_participants
end
