class RemoveColumnEvents < ActiveRecord::Migration[5.2]
  def change
  	remove_column :events, :is_show_email_available
  end
end
