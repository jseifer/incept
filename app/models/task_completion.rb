class TaskCompletion < ActiveRecord::Base
  belongs_to :task
  belongs_to :user
  attr_accessible :completed_at, :started_at, :user_id, :task_id, :complete, :active_minutes
  
  validates_presence_of :active_minutes
  after_save :update_task
  
  before_save :update_task_details
  
  def update_task_details
    self.completed_at = Time.now
    self.started_at = Time.now - (self.active_minutes * 60)
  end
  
  def update_task
    if self.complete = true
      self.task.complete = true
    end
    self.task.last_completed = self.completed_at
    self.task.save
  end
end
