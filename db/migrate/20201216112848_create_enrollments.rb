class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|

      t.string :score
      t.integer :course_id 
      t.integer :user_id 
      t.boolean :from_token, :null => false, :default => false
      t.integer :rank
      
      t.timestamps
    end
  end
end
