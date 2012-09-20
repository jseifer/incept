class Task < ActiveRecord::Base
  belongs_to :topic
  belongs_to :level
  has_many :task_completers
  attr_accessible :description, :est_completion, :name, :slug, :url, :topic_id, :level_id
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def completes 
    self.task_completers.count
  end
  
  def completed_by_me(user)
    if self.task_completers.where(:user_id => user).count > 0 
      true
    else
      false
    end
  end
  
  def users_completed
    users = self.task_completers.group_by {|t| t.user}
    
    users.count
  end
end
