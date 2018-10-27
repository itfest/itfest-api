class Event < ApplicationRecord
	has_many  :event_participation_notes
	validates :title, presence: true
	validates :team_limit, presence: true, numericality: { only_integer: true }
	validates :description, length: {in: 2..60}
	validates  :coach, inclusion: { in: [true, false] }
	validates  :question, inclusion: { in: [true, false] }
	validates  :notes, inclusion: { in: [true, false] }
end