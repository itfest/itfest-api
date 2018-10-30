class AddColumnsEventPartNotes < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_participation_notes, :how_learned_about, :text
  	add_column :event_participation_notes, :is_online, :boolean
  	add_column :event_participation_notes, :title, :string
  	add_column :event_participation_notes, :answers, :text
  end
end
