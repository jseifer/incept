class FollowsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    current_user.follow(@topic)
    flash[:notice] = "Successfully followed topic."
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    current_user.stop_following(@topic)
    flash[:notice] = "Successfully unfollowed topic."
  end

end
