class QuestionListSerializer < ActiveModel::Serializer
	belongs_to :event

	has_many :question_answers
	has_many :event_participation_notes, :through => :question_answers
	
	attribute :id 
	attribute :questions

	def questions
		object.questions.select(:id,:question_text)
	end
end
