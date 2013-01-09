require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase
  test "should not save technology without name" do
      technology=Technology.new
      assert !technology.save
    end 
  test "should not save technology without description" do
      technology=Technology.new
      assert !technology.save
    end 
end
