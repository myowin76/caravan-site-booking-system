require 'test_helper'

class CaravanCustomerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CaravanCustomer.new.valid?
  end
end
