class EventParticipationNote < ApplicationRecord
	belongs_to :event

	has_one    :coach
	has_many   :event_participants

	has_many :question_answers
	has_many :question_lists, :through => :question_answers

	validates  :title, presence: true
	validates  :how_learned_about, presence: true
	
	validate   :is_online

	accepts_nested_attributes_for :coach
	accepts_nested_attributes_for :event_participants

	accepts_nested_attributes_for :question_answers
	accepts_nested_attributes_for :question_lists
end
