require 'test_helper'

class SourcingpartnerTest < ActiveSupport::TestCase
  test "should not save sourcingpartner without name" do
      sourcingpartner=Sourcingpartner.new
      assert !sourcingpartner.save
    end 
  test "should not save sourcingpartner without description" do
      sourcingpartner=Sourcingpartner.new
      assert !sourcingpartner.save
    end 
end
