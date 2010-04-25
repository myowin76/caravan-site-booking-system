require 'test_helper'

class OwnerChargeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert OwnerCharge.new.valid?
  end
end
