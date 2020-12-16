class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|

      t.string  :instructor
      t.string  :number
      t.string  :title
      t.integer :credit
      t.integer :total_enrollment
      t.integer :user_id 
      t.integer :university_id 

    
      t.timestamps
    end
  end
end
