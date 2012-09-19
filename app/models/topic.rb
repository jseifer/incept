class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :slug, :title
  
  extend FriendlyId
  friendly_id :name, use: :slugged
end
