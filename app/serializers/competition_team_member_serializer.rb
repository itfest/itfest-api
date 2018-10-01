class CompetitionTeamMemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name
  belongs_to :competition_teams
end
