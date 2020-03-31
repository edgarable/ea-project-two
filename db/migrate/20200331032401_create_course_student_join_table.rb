class CreateCourseStudentJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :courses_students do |t|
      t.integer :student_id
      t.integer :course_id
    end

    add_index("courses_students", ["student_id","course_id"])
  end
end
