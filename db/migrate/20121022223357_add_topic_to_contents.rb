class AddTopicToContents < ActiveRecord::Migration
  def change
    add_column :contents, :topic_id, :integer
  end
end
