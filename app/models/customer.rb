class Customer < ActiveRecord::Base
  attr_accessible :title, :firstname, :lastname, :address1, :address2, :phone, :email
  
  def fullname
    [firstname, lastname].join(' ')
  end
  
    def self.search(search)
	if search
		find(:all, :conditions => ['lastname LIKE ?',"%#{search}%"])
	else
		find(:all)
	end
  
  end
end
