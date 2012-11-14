class Task < ActiveRecord::Base
  attr_accessible :name, :completed_at, :rating, :user, :complete, :content_id, :started_at, :reccuring, :interval, :interval_modifier, :last_completed, :due_date
  attr_accessor :task_due
  belongs_to :topic
  belongs_to :level
  belongs_to :user
  belongs_to :content
  has_many :task_completions
  has_many :users, :through => :task_completions
  
  validates_presence_of :name
  before_save :update_task
  def self.find_due(user)
    @user = User.find(user)
    @user.task_ownerships.where('(tasks.due_date) < ?', (Time.now ))
  end
  
  def self.current_tasks(user)
    
     @user = User.find(user)
     
     tasks = user.task_ownerships.where(:reccuring => true)
     
    
 
  end
  
  def virt_due
    if self.interval.present?
    Time.at(self.last_completed.to_i + ((self.interval * self.interval_modifier) * 60))
    end
  end
  def update_task
    if self.interval.present?
      self.due_date = self.virt_due
    end
  end
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
