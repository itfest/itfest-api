class AddDescriptionContestNom < ActiveRecord::Migration[5.2]
  def change
  	add_column :contest_nominations, :description, :text
  end
end
