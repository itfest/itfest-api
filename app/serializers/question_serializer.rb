class QuestionSerializer < ActiveModel::Serializer
	belongs_to :question_list
	attributes :id,:question_text
end
