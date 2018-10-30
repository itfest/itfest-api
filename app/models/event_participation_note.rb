class EventParticipationNote < ApplicationRecord
	belongs_to :event

	has_one    :coach
	has_many   :event_participants

	validates  :title, presence: true
	validates  :how_learned_about, presence: true
	
	validate   :answers
	validate   :is_online

	accepts_nested_attributes_for :coach
	accepts_nested_attributes_for :event_participants
end
