class CompetitionTeam < ApplicationRecord
	has_many :competition_team_members, :dependent => :destroy
	has_one :competition_team_coach, :dependent => :destroy
	validates :name, presence: true, uniqueness: true, length: { in: 2..16 }, custom_name: true
	validates_length_of :competition_team_members, maximum: 3
	accepts_nested_attributes_for :competition_team_members, limit: 3
	accepts_nested_attributes_for :competition_team_coach, limit: 1
end
