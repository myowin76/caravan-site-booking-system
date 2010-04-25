class Owner < ActiveRecord::Base
  attr_accessible :title, :firstname, :lastname, :address1, :address2, :postcode, :phone, :email
  
  has_many :caravans
  
  def fullname
    [firstname, lastname].join(' ')
  end
end
