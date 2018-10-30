class RemoveColumnsEventParticipant < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_participants, :how_learned_about
  	remove_column :event_participants, :is_online
  	remove_column :event_participants, :show_email
  	remove_column :event_participants, :answers
  end
end
