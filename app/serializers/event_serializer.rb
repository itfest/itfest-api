class EventSerializer < ActiveModel::Serializer
  attributes :title, :team_limit, :description
  has_many :event_participation_notes
  has_one :question_list
end
