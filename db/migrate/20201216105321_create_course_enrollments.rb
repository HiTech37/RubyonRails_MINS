class CreateCourseEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :course_enrollments do |t|

      t.timestamps
    end
  end
end
