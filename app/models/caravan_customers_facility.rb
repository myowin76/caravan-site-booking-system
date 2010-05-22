class CaravanCustomersFacility < ActiveRecord::Base
  attr_accessible :caravan_customer_id, :facility_id, :qty, :unit
  belongs_to :facility
  belongs_to :caravan_customer
end
