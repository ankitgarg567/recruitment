require 'test_helper'

class LoginInfo5Test < ActiveSupport::TestCase
test "should not save loginInfo5 without username" do
      loginInfo5=LoginInfo5.new
      assert !loginInfo5.save
    end
 test "should not save loginInfo5 without password" do
      loginInfo5=LoginInfo5.new
      assert !loginInfo5.save
    end  
end
