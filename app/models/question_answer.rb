class QuestionAnswer < ApplicationRecord
	belongs_to :event_participation_note
	belongs_to :question_list
end
