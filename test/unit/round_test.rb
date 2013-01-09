require 'test_helper'

class RoundTest < ActiveSupport::TestCase
  test "should not save round without name" do
      round=Round.new
      assert !round.save
    end 
  test "should not save round without description" do
      round=Round.new
      assert !round.save
    end 
end
