class ModifyTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :slug
    remove_column :tasks, :description
    remove_column :tasks, :est_completion
    remove_column :tasks, :topic_id
    remove_column :tasks, :url
    remove_column :tasks, :level_id
    remove_column :tasks, :repeatable
    remove_column :tasks, :approved
    remove_column :tasks, :approved_by
    remove_column :tasks, :approved_at
  end

  def down
    create_column :tasks, :slug
    create_column :tasks, :description
    create_column :tasks, :est_completion
    create_column :tasks, :topic
    create_column :tasks, :url
    create_column :tasks, :level
    create_column :tasks, :repeatable, :boolean
    create_column :tasks, :approved, :boolean
    create_column :tasks, :approved_by, :integer
    create_column :tasks, :approved_at, :datetime
  end
end
