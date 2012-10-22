class AddUserToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :user_id, :integer
    add_column :tasks, :rating, :string
    add_column :tasks, :content_id, :integer
    
    add_index :tasks, :user_id
    add_index :tasks, :content_id
  end
  
end
