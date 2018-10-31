class QuestionList < ApplicationRecord
	belongs_to :event
	has_many :questions

	has_many :question_answers
	has_many :event_participation_notes, :through => :question_answers

	accepts_nested_attributes_for :questions
end
