class RemoveMiniCourses < ActiveRecord::Migration[5.2]
  def change
  	drop_table :mini_courses
  	drop_table :mini_course_listeners
  end
end
