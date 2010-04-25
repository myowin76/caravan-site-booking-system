require 'test_helper'

class ChargeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Charge.new.valid?
  end
end
