class CreateNtuEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :ntu_enrollments do |t|
      t.string :score
      t.references :ntu_course, null: false, foreign_key: true
      t.references :ntu_student, null: false, foreign_key: true
      t.boolean :from_token, :null => false, :default => false
      t.integer :rank
      t.index [:ntu_student_id, :ntu_course_id]
      t.index [:ntu_course_id, :ntu_student_id]

      t.timestamps
    end
  end
end
