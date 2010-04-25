require 'test_helper'

class CaravanTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CaravanType.new.valid?
  end
end
