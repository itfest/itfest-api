class RemoveColumnsContestTeamMember < ActiveRecord::Migration[5.2]
  def change
  	remove_column :contest_work_members, :notes
  	remove_column :contest_work_members, :how_learned_about
  end
end
