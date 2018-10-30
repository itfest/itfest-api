class RemoveCityEventParticipant < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_participants, :city
  end
end
