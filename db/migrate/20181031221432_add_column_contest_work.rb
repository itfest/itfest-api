class AddColumnContestWork < ActiveRecord::Migration[5.2]
  def change
  	rename_column :contest_works, :manager, :mentor
  	add_column :contest_works, :how_learned_about, :text
  end
end
