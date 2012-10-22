class AddVideoToContents < ActiveRecord::Migration
  def change
    add_column :contents, :video_url, :string
    add_column :contents, :video_thumbnails, :string
  end
end
