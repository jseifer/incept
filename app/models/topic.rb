class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :slug, :title
  resourcify
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_followable
  
  validates_presence_of :name, :title, :description
  
  has_many :tasks
  has_many :contents
  
end
