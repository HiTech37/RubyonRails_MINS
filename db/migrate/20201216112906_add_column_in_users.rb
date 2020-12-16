class AddColumnInUsers < ActiveRecord::Migration[6.0]

  def change
    add_column :users, :token , :string 
    add_column :users, :university_id , :integer
    add_column :users, :number, :string 
  end
  
end
