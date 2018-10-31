class CleanColumns < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_participation_notes, :answers
  	remove_column :question_lists, :list
  end
end
