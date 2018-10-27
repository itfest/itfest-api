class QuestionList < ApplicationRecord
	belongs_to :event_participation_note
	validates :list, presence: true
	validates  :event_participation_note, presence: true
end
