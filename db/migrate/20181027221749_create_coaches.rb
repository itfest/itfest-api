class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
		t.string :first_name
		t.string :last_name
		t.string :patronymic
		t.string :workplace
		t.string :position
		t.date   :birthdate
		t.string :address
		t.string :phone
		t.string :email
		t.string :soc_media
		
		t.timestamps
    end
    add_reference :coaches, :event_participation_note, index: true
  end
end
