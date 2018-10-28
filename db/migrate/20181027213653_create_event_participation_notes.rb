class CreateEventParticipationNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_participation_notes do |t|
		t.text    :notes
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
		t.boolean :show_email
		t.string  :soc_media
		t.string  :how_learned_about
		t.text    :answers
		
		t.timestamps
    end
    add_reference :event_participation_notes, :event, index: true
  end
end
