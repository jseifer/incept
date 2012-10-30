class UsersController < ApplicationController




  def show
    @user = User.find(params[:id])
    @tasks_by_name = @user.task_completions.group_by { |t| t.task.name }
  end





end