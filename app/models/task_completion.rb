class TaskCompletion < ActiveRecord::Base
  belongs_to :task
  belongs_to :user
  attr_accessible :completed_at, :started_at, :user_id, :task_id, :complete, :active_minutes

  validates_presence_of :active_minutes
  after_save :update_task
  

  
  def update_task
    self.completed_at = Time.now
    if self.complete = true
      self.task.complete = true
    else 
      self.task.complete = false
    end
    
    self.task.last_completed = self.completed_at
    self.task.save
  end
end
