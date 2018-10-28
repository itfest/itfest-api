class QuestionList < ApplicationRecord
	belongs_to :event
	validates :list, presence: true
	validates  :event, presence: true
end
