require 'test_helper'

class CaravanCustomersFacilityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CaravanCustomersFacility.new.valid?
  end
end
