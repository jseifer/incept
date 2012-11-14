class DashboardController < ApplicationController
  def index
    @user = User.find(current_user)
    @task_completion = @user.task_completions.new
    @todo_list = Task.find_due(current_user)
    @task_list = @user.task_ownerships.where(:reccuring => false, :complete => false)
    @complete = @user.task_completions.where('DATE(completed_at) = ?', Date.today)
  end
  
end
