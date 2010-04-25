class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :postcode
	  t.string :phone
      t.string :email
      t.timestamps
    end
	Customer.create(:title => 'Mr', :firstname => 'Aung', :lastname => 'Win', :address1 => '8, Terry Street', :address2 => 'Dudley', :postcode => 'DO1 D44', :phone => '07939999567', :email => 'myowin76@gmail.com')
	Customer.create(:title => 'Mr', :firstname => 'Neil', :lastname => 'Scortt', :address1 => '880, Oxford Street', :address2 => 'London', :postcode => 'WC1H 7JJ4', :phone => '02088933365', :email => 'john@gmail.com')
	Customer.create(:title => 'Mr', :firstname => 'Muni', :lastname => 'Dasa', :address1 => '12, Royal Street', :address2 => 'London', :postcode => 'DO1 D44', :phone => '02086631230', :email => 'munidasa@cnwl.ac.uk')
	Customer.create(:title => 'Miss', :firstname => 'Tess', :lastname => 'Masa', :address1 => '233, Camdan Street', :address2 => 'Brent, London', :postcode => 'DO1 D44', :phone => '01025444554', :email => 'tess@gmail.com')
	Customer.create(:title => 'Mr', :firstname => 'Clark', :lastname => 'Kent', :address1 => '65, Prince High Street', :address2 => 'Edinburgh', :postcode => 'DO1 D44', :phone => '08006363633', :email => 'clark.kent@gmail.com')
	
  end
  
  def self.down
    drop_table :customers
  end
end
