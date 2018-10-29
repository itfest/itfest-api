class QuestionListSerializer < ActiveModel::Serializer
  attributes :id,:list
  belongs_to :event
end
