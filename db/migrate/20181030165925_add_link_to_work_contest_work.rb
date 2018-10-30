class AddLinkToWorkContestWork < ActiveRecord::Migration[5.2]
  def change
  	add_column :contest_works, :ref_to_work, :string
  end
end
