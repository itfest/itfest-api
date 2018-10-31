class QuestionSerializer < ActiveModel::Serializer
	has_many :question_lists	
	attributes :id,:question_text
end
