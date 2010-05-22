class Facility < ActiveRecord::Base
  attr_accessible :name, :price, :description
  
  has_many :caravan_customers_facilities
  has_many :caravan_customers, :through => :caravan_customers_facilities
  
  
end
