class AddRefsQuestionList < ActiveRecord::Migration[5.2]
  def change
  	add_reference :questions , :question_list, index: true
  end
end
