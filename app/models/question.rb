class Question < ApplicationRecord
	has_many :question_lists	

	validate :question_text

	accepts_nested_attributes_for :question_lists
end
