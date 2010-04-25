class Facility < ActiveRecord::Base
  attr_accessible :name, :price, :description
  
  has_many :caravan_facilities
  has_many :caravan_customers, :through => :caravan_facilities
  
  
end
