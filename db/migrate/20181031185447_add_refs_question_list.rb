class AddRefsQuestionList < ActiveRecord::Migration[5.2]
  def change
  	add_reference :question_lists , :question, index: true
  end
end
