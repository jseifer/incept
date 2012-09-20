class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.references :topic
      t.string :url
      t.string :est_completion
      t.references :level

      t.timestamps
    end
    add_index :tasks, :topic_id
    add_index :tasks, :level_id
  end
end
