class CreateNthuCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :nthu_courses do |t|
      t.string :instructor
      t.string :number
      t.string :title
      t.integer :credit
      t.integer :total_enrollment
      t.index :number
      t.index :instructor

      t.timestamps
    end
  end
end
