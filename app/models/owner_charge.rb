class OwnerCharge < ActiveRecord::Base
  attr_accessible :owner_id, :charge_id, :for_year, :description
end
