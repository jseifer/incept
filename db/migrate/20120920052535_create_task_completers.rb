class CreateTaskCompleters < ActiveRecord::Migration
  def change
    create_table :task_completers do |t|
      t.references :user
      t.references :task
      t.date :date
      t.string :verification
      t.string :time_spent
      t.string :rating

      t.timestamps
    end
    add_index :task_completers, :user_id
    add_index :task_completers, :task_id
  end
end
