require 'test_helper'

class CaravanTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Caravan.new.valid?
  end
end
