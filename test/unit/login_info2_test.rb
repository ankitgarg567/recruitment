require 'test_helper'

class LoginInfo2Test < ActiveSupport::TestCase
 test "should not save loginInfo2 without username" do
      loginInfo2=LoginInfo2.new
      assert !loginInfo2.save
    end
 test "should not save loginInfo2 without password" do
      loginInfo2=LoginInfo2.new
      assert !loginInfo2.save
    end  
end
