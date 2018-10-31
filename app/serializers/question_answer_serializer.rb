class QuestionAnswerSerializer < ActiveModel::Serializer
	belongs_to :event_participation_note
	belongs_to :question_list
	
	attributes :id
end
