require 'test_helper'
 
class TopicTest < ActiveSupport::TestCase

    test "should not save topic without title" do
      topic = Topic.new
      assert !topic.save, "Saved the topic without a title"
    end
    
    test "should not save topic without name" do
      topic = Topic.new
      assert !topic.save, "Saved the topic without a name"
    end
    
    test "should not save topic without description" do
      topic = Topic.new
      assert !topic.save, "Saved the topic without a description"
    end
end