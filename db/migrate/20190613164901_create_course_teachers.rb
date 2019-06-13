class CreateCourseTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :course_teachers do |t|
      t.references :course, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
