class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :image
      t.string :url
      t.string :tag_list

      t.timestamps
    end
  end
end
