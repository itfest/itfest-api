class CompetitionTeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :how_learned_about
  has_many :competition_team_members
  has_one :competition_team_coach
end
