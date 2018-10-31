class CreateQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :question_answers do |t|
      t.belongs_to :event_participation_note
      t.belongs_to :question_list
      t.text :answer_text
      t.timestamps
    end
  end
end
