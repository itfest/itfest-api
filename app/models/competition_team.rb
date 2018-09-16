class CompetitionTeam < ApplicationRecord
	has_many :competition_team_members
	validates :name, presence: true, uniqueness: true, length: { in: 2..16 }
end
