class CreateTaskCompletions < ActiveRecord::Migration
  def change
    create_table :task_completions do |t|
      t.references :task
      t.references :user
      t.datetime :started_at
      t.datetime :completed_at

      t.timestamps
    end
    add_index :task_completions, :task_id
    add_index :task_completions, :user_id
  end
end
