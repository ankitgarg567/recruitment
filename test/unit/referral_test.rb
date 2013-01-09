require 'test_helper'

class ReferralTest < ActiveSupport::TestCase
 test "should not save referral without name" do
      referral=Referral.new
      assert !referral.save
    end
 test "should not save referral without email" do
      referral=Referral.new
      assert !referral.save
    end  
    test "should not save referral without referredby" do
      referral=Referral.new
      assert !referral.save
    end  
    test "should not save referral without role" do
      referral=Referral.new
      assert !referral.save
    end  
    test "should not save referral without technology" do
      referral=Referral.new
      assert !referral.save
    end  
    test "should not save referral without cv" do
      referral=Referral.new
      assert !referral.save
    end  
end
