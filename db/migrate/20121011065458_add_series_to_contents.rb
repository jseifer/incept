class AddSeriesToContents < ActiveRecord::Migration
  def change
    add_column :contents, :series, :string
  end
end
