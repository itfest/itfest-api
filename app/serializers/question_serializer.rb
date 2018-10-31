class QuestionSerializer < ActiveModel::Serializer
	belongs_to :question_lists
	attributes :id, :question_text
end
