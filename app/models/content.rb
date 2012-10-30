class Content < ActiveRecord::Base
  attr_accessible :description, :image, :name, :slug, :tag_list, :url, :video_url, :video_thumbnails, :series, :topic_id
  serialize :video_thumbnails
  
  acts_as_taggable

  serialize :tag_list
  validates_uniqueness_of :url, :message => "has already been submitted"
  
  
  validates_presence_of :url, :name
  belongs_to :topic
 

end
