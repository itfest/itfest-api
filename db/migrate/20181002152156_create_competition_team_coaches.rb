class CreateCompetitionTeamCoaches < ActiveRecord::Migration[5.2]
  def change
  	create_table :competition_team_coaches do |t|
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
  	add_reference :competition_team_coaches, :competition_team, index: true
  end
end
