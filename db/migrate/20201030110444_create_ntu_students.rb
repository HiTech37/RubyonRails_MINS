class CreateNtuStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :ntu_students do |t|
      t.string :number

      t.timestamps
    end
  end
end
