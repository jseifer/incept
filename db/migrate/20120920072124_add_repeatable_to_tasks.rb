class AddRepeatableToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :repeatable, :boolean
    add_column :tasks, :approved, :boolean
    add_column :tasks, :approved_by, :integer
    add_column :tasks, :approved_at, :datetime
  end
end
