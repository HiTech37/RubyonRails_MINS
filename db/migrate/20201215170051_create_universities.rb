class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|

      t.string :name 
      t.timestamps
    end
  end
end
