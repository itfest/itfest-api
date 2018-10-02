class CompetitionteamcoachSerializer < ActiveModel::Serializer
  attributes :id, :first_name
  belongs_to :competition_team
end
