class CaravanCustomer < ActiveRecord::Base
  attr_accessible :customer_id, :caravan_id, :location_id, :no_of_adults, :no_of_children, :arrival_date, :departure_date, :deposit_paid, :status
  
  has_many :caravan_facilities
  has_many :facilities, :through => :caravan_facilities
end
