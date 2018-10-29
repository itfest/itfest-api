class EventSerializer < ActiveModel::Serializer
  attributes :id,:title, :team_limit, :description, :has_coach, :has_question, :is_online_participation_available
  has_many :event_participation_notes
  has_one :question_list
end
