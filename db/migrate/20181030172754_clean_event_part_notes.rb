class CleanEventPartNotes < ActiveRecord::Migration[5.2]
	def change
		remove_column :event_participation_notes , :is_online
		remove_column :event_participation_notes ,:first_name
		remove_column :event_participation_notes ,:last_name
		remove_column :event_participation_notes ,:patronymic
		remove_column :event_participation_notes , :university
		remove_column :event_participation_notes ,:speciality
		remove_column :event_participation_notes ,:year_of_study
		remove_column :event_participation_notes , :group
		remove_column :event_participation_notes , :address
		remove_column :event_participation_notes ,  :birthdate
		remove_column :event_participation_notes , :email
		remove_column :event_participation_notes , :phone
		remove_column :event_participation_notes ,:show_email
		remove_column :event_participation_notes , :soc_media
		remove_column :event_participation_notes , :how_learned_about
		remove_column :event_participation_notes ,  :answers
	end
end
