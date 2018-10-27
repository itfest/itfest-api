class CreateQuestionLists < ActiveRecord::Migration[5.2]
  def change
    create_table :question_lists do |t|
      t.text :list
      t.timestamps
    end
    add_reference :question_lists, :event_participation_note, index: true
  end
end
