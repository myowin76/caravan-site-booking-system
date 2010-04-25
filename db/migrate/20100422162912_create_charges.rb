class CreateCharges < ActiveRecord::Migration
  def self.up
    create_table :charges do |t|
      t.string :name
      t.decimal :price
      t.string :unit
      t.timestamps
    end
	  Charge.create(:name => 'Electricity', :price => '2.00', :unit => 'unit')
	  Charge.create(:name => 'Gas Cylinder', :price => '10.00', :unit => 'cylinder')
	  Charge.create(:name => 'Ground Deposit', :price => '50.00', :unit => 'time')
	  Charge.create(:name => 'Ground Rent', :price => '400.00', :unit => 'time')
	  Charge.create(:name => 'Roof Leak', :price => '10.00', :unit => 'time')
	 
  end
  
  def self.down
    drop_table :charges
  end
end
