require 'test_helper'

class LoginInfo1Test < ActiveSupport::TestCase
test "should not save loginInfo1 without username" do
      loginInfo1=LoginInfo1.new
      assert !loginInfo1.save
    end
 test "should not save loginInfo1 without password" do
      loginInfo1=LoginInfo1.new
      assert !loginInfo1.save
    end   
end
