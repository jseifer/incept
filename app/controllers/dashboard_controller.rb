class DashboardController < ApplicationController
  def index
    @user = User.find(current_user)
    @task_completion = @user.task_completions.new
    @todo_list = Task.where(:reccuring => true)
    @task_list = Task.where(:reccuring => false)
    @complete = TaskCompletion.where('DATE(completed_at) = ?', Date.today)
  end
end
