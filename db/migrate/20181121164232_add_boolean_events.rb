class AddBooleanEvents < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :is_registration_available, :boolean
  end
end
