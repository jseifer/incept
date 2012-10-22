class AddFieldsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :reccuring, :boolean
    add_column :tasks, :interval, :integer
    add_column :tasks, :interval_modifier, :integer
    add_column :tasks, :reminders, :boolean
    add_column :tasks, :last_completed, :datetime
  end
end
