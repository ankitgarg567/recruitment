require 'test_helper'

class LoginInfo3Test < ActiveSupport::TestCase
 test "should not save loginInfo3 without username" do
      loginInfo3=LoginInfo3.new
      assert !loginInfo3.save
    end
 test "should not save loginInfo3 without password" do
      loginInfo3=LoginInfo3.new
      assert !loginInfo3.save
    end  
end
