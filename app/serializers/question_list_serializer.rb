class QuestionListSerializer < ActiveModel::Serializer
	belongs_to :event
	belongs_to :questions

	has_many :question_answers
	has_many :event_participation_notes, :through => :question_answers
	

	attributes :id
end
