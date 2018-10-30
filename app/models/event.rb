class Event < ApplicationRecord
	has_many  :event_participation_notes
	has_one  :question_list
	
	validates :title, presence: true
	validates :team_limit, presence: true, numericality: { only_integer: true }
	validates :description, length: {in: 2..60}
	validates :has_coach, inclusion: { in: [true, false] }
	validates :has_question, inclusion: { in: [true, false] }
	validates :is_online_participation_available, inclusion: { in: [true, false] }
	validates :is_show_email_available, inclusion: { in: [true, false] }

	accepts_nested_attributes_for :question_list
end