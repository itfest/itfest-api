class CreateEvents < ActiveRecord::Migration[5.2]
	def change
		create_table :events do |t|
			t.string  :title
			t.text    :description
			t.boolean :coach
			t.boolean :question
			t.boolean :notes
			t.decimal :team_limit

			t.timestamps
		end
	end
end
