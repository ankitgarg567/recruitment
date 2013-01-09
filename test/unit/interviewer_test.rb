require 'test_helper'

class InterviewerTest < ActiveSupport::TestCase
test "should not save interviewer without name" do
      interviewer=Interviewer.new
      assert !interviewer.save
    end
test "should not save interviewer without role" do
      interviewer=Interviewer.new
      assert !interviewer.save
    end   
test "should not save interviewer without email" do
      interviewer=Interviewer.new
      assert !interviewer.save
    end      
end
