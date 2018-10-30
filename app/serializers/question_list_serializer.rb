class QuestionListSerializer < ActiveModel::Serializer
  belongs_to :event

  attributes :id,:list
end
