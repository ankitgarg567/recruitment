require 'test_helper'

class ApplicantTest < ActiveSupport::TestCase
 
 test "should not save applicant without name" do
      applicant=Applicant.new
      assert !applicant.save
    end
test "should not save applicant without email" do
      applicant=Applicant.new
      assert !applicant.save
    end
test "should not save applicant without technology" do
      applicant=Applicant.new
      assert !applicant.save
    end
test "should not save applicant without sourcingpartner" do
      applicant=Applicant.new
      assert !applicant.save
    end 
test "should not save applicant without role" do
      applicant=Applicant.new
      assert !applicant.save
    end  
test "should not save applicant without round" do
      applicant=Applicant.new
      assert !applicant.save
    end 
test "should not save applicant without scheduleofinterview" do
      applicant=Applicant.new
      assert !applicant.save
    end 
test "should not save applicant without interviewers" do
      applicant=Applicant.new
      assert !applicant.save
    end 
test "should not save applicant without status" do
      applicant=Applicant.new
      assert !applicant.save
    end 
test "should not save applicant without cv" do
      applicant=Applicant.new
      assert !applicant.save
    end                           
end
