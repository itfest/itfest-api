class CreateEventParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :event_participants do |t|

		t.string  :first_name
		t.string  :last_name
		t.string  :patronymic
		t.string  :university
		t.string  :speciality
		t.decimal :year_of_study
		t.string  :group
		t.string  :address
		t.date    :birthdate
		t.string  :email
		t.string  :phone
		t.string  :soc_media
		t.string  :city
		t.string  :how_learned_about

		t.text    :is_online
		t.boolean :show_email
		t.text    :answers

        t.timestamps
    end
    add_reference :event_participants, :event_participation_note, index: true
  end
end
