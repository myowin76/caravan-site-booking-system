class Caravan < ActiveRecord::Base
  attr_accessible :owner_id, :caravan_type_id, :pitch_no, :build_date, :price
  
  belongs_to :owner
  belongs_to :caravan_type
  
  has_many :caravan_customers
  has_many :customers, :through => :caravan_customers

  
  
  def self.arrival_search(search)
	if search
		find(:all, :conditions => ['arrival_date = ?',"%#{search}%"])
	else
		find(:all)
	end
  
  end  
  
end
