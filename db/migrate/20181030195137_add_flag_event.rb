class AddFlagEvent < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :is_show_email_available, :boolean
  end
end
