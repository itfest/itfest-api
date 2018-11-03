class AddAppRecEventPartNote < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_participation_notes, :received, :boolean
  	add_column :event_participation_notes, :approved, :boolean
  end
end
