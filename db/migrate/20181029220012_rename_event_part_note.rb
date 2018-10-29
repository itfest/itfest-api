class RenameEventPartNote < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_participation_notes, :notes
  	add_column :event_participation_notes, :is_online, :boolean
  end
end
