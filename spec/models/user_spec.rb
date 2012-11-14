require 'spec_helper'

describe User do
  describe "#total_task_minutes" do
    let!(:user) { create(:user) }
    let(:task_completion) { create(:task_completion, user: user) }

    it "should run without error" do
      lambda { User.new.total_task_minutes }.should_not raise_error
    end

    it "returns 0 with no tasks" do
      user.total_task_minutes.should == 0
    end

    it "returns the sum of active minutes in a task completion" do
      task_completion.update_attribute(:active_minutes, 10)
      user.reload.total_task_minutes.should == 10
    end

    it "returns the sum of active minutes in a task completion with more than one completion" do
      task_completion.update_attribute(:active_minutes, 10)
      create(:task_completion, user: user, active_minutes: 20)
      user.reload.total_task_minutes.should == 30
    end

    it "does not sum other user's task completion minutes" do
      task_completion.update_attribute(:active_minutes, 10)
      create(:task_completion, user: create(:user), active_minutes: 20)
      user.reload.total_task_minutes.should == 10
    end
  end
end
