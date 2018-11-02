class EventParticipationNote < ApplicationRecord
	belongs_to :event

	has_one    :coach
	has_many   :event_participants

	validates  :title, presence: true
	validate   :how_learned_about
	
	validate   :answers
	validate   :is_online

	accepts_nested_attributes_for :coach
	accepts_nested_attributes_for :event_participants
end
