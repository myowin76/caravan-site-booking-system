class CaravanType < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :caravans
end
