class CreateEvents < ActiveRecord::Migration[5.2]
	def change
		create_table :events do |t|
			t.string  :title
			t.text    :description
			t.boolean :has_coach
			t.boolean :has_question
			t.boolean :is_online_participation_available
			t.decimal :team_limit

			t.timestamps
		end
	end
end
