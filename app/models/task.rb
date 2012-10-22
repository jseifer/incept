class Task < ActiveRecord::Base
  attr_accessible :name, :completed_at, :rating, :user, :complete, :content_id, :started_at, :reccuring, :interval, :interval_modifier, :last_completed
  attr_accessor :task_due
  belongs_to :topic
  belongs_to :level
  belongs_to :user
  
  has_many :task_completions
  has_many :users, :through => :task_completions
  
  
  
  
  def task_due 
    task_time = self.interval * self.interval_modifier
    if self.last_completed.present?
    time_since_last_completion = (Time.now - self.last_completed).round / 60
    else 
    time_since_last_completion = 999999
    end 
    
    
    if task_time < time_since_last_completion 
      true
    else 
      false
    end 
  end
end
