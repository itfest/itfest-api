class CompetitionTeam < ApplicationRecord
	has_many :competition_team_members
	has_one :competition_team_coach
	validates :name, presence: true, uniqueness: true, length: { in: 2..16 }, custom_name: true
	validates_length_of :competition_team_members, maximum: 3
	accepts_nested_attributes_for :competition_team_members
	accepts_nested_attributes_for :competition_team_coach
end
