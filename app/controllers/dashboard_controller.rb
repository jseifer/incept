class DashboardController < ApplicationController
  def index
    @user = User.find(current_user)
    @task_completion = @user.task_completions.new
    @todo_list = @user.task_ownerships.where(:reccuring => true)
    @task_list = @user.task_ownerships.where(:reccuring => nil, :complete => nil)
    @complete = @user.task_completions.where('DATE(completed_at) = ?', Date.today)
  end
end
