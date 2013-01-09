require 'test_helper'

class LoginInfoTest < ActiveSupport::TestCase
 test "should not save loginInfo without username" do
      loginInfo=LoginInfo.new
      assert !loginInfo.save
    end
 test "should not save loginInfo without password" do
      loginInfo=LoginInfo.new
      assert !loginInfo.save
    end   
end
