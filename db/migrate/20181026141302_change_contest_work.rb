class ChangeContestWork < ActiveRecord::Migration[5.2]
  def change
  	remove_column :contest_works, :first_name
  	remove_column :contest_works, :last_name
  	remove_column :contest_works, :patronymic 
  	remove_column :contest_works, :university
  	remove_column :contest_works, :speciality
  	remove_column :contest_works, :year_of_study
  	remove_column :contest_works, :group
  	remove_column :contest_works, :email
  	remove_column :contest_works, :phone
  	add_column :contest_works, :work_title, :string
  	add_column :contest_works, :team_name, :string
  	add_column :contest_works, :manager, :string
  	add_column :contest_works, :notes, :text
  	add_column :contest_works, :software, :string
  end
end
