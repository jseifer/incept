require 'test_helper'
 
class ContentTest < ActiveSupport::TestCase
   
   test "should not save content without url" do
      content = Content.new
      assert !content.save, "Saved the topic without a url"
   end
   
   test "should not save content without name" do
      content = Content.new
      assert !content.save, "Saved the topic without a url"
   end
   
end