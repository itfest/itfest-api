class CreateContestWorkMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :contest_work_members do |t|
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

	    t.timestamps
    end
    add_reference :contest_work_members, :contest_work, index: true
  end
end
