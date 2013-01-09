require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase
 test "should not save adminUser without email" do
      adminUser=AdminUser.new
      assert !adminUser.save
    end
     test "should not save adminUser without password" do
      adminUser=AdminUser.new
      assert !adminUser.save
    end
     test "should not save adminUser without password_confirmation" do
      adminUser=AdminUser.new
      assert !adminUser.save
    end
     test "should not save adminUser without remember_me" do
      adminUser=AdminUser.new
      assert !adminUser.save
    end
end
