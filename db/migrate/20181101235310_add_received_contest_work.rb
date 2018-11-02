class AddReceivedContestWork < ActiveRecord::Migration[5.2]
  def change
  	add_column :contest_works, :received, :boolean
  end
end
