class Question < ApplicationRecord
	belongs_to :question_list	

	validate :question_text
end
