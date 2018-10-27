class RemoveCompetitonTeam < ActiveRecord::Migration[5.2]
  def change
  	drop_table :competition_teams
  	drop_table :competition_team_members
  	drop_table :competition_team_coaches
  end
end
