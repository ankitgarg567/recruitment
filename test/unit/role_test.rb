require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  test "should not save role without name" do
      role=Role.new
      assert !role.save
    end 
  test "should not save role without description" do
      role=Role.new
      assert !role.save
    end 
end
