class TaskCompleter < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  attr_accessible :date, :rating, :time_spent, :verification, :user_id, :task_id
end
