require 'test_helper'

class CaravanFacilityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CaravanFacility.new.valid?
  end
end
