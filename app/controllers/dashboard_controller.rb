class DashboardController < ApplicationController
  def index
    @user = User.find(current_user)
    @task_completion = @user.task_completions.new
    @todo_list = Task.where(:reccuring => true)
  end
end
