class CreateUniversityCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :university_courses do |t|

      t.timestamps
    end
  end
end
