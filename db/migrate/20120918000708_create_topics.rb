class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
