class EventParticipationNote < ApplicationRecord
	belongs_to :event

	has_one    :coach, :dependent => :destroy
	has_many   :event_participants, :dependent => :destroy

	validate   :title
	validate   :how_learned_about
	
	validate   :answers
	validate   :is_online

	accepts_nested_attributes_for :coach
	accepts_nested_attributes_for :event_participants, :limit => 6
end
