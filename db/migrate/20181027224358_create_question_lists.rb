class CreateQuestionLists < ActiveRecord::Migration[5.2]
  def change
    create_table :question_lists do |t|
      t.text :list
      t.timestamps
    end
    add_reference :question_lists, :event, index: true
  end
end
