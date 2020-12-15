class CreateNthuEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :nthu_enrollments do |t|
      t.string :score
      t.references :nthu_course, null: false, foreign_key: true
      t.references :nthu_student, null: false, foreign_key: true
      t.boolean :from_token, :null => false, :default => false
      t.integer :rank
      t.index [:nthu_student_id, :nthu_course_id]
      t.index [:nthu_course_id, :nthu_student_id]

      t.timestamps
    end
  end
end
