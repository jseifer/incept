class AddCompleteToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :complete, :boolean
    add_column :tasks, :completed_at, :datetime
    add_column :tasks, :started_at, :datetime
    
  end
end
