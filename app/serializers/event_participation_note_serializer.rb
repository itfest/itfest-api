class EventParticipationNoteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :coach
  has_many :event_participants
end
