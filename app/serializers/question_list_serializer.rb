class QuestionListSerializer < ActiveModel::Serializer
  attributes :list
  belongs_to :event
end
