class AddCompleteToTaskCompletions < ActiveRecord::Migration
  def change
    add_column :task_completions, :complete, :boolean
    add_column :task_completions, :active_minutes, :integer
  end
end
