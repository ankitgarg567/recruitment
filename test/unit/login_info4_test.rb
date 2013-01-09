require 'test_helper'

class LoginInfo4Test < ActiveSupport::TestCase
 test "should not save loginInfo4 without username" do
      loginInfo4=LoginInfo4.new
      assert !loginInfo4.save
    end
 test "should not save loginInfo4 without password" do
      loginInfo4=LoginInfo4.new
      assert !loginInfo4.save
    end  
end
