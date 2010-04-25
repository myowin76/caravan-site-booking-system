class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.string :name
      t.decimal :price
      t.string :description
	  t.string :unit
      t.timestamps
    end
	
	Facility.create(:name => 'Baby Cot', :price => '2.50', :description => 'baby items', :unit => 'pack')
	Facility.create(:name => 'Barbecue', :price => '3.00', :description => 'barbecue items', :unit => 'set')
	Facility.create(:name => 'Canopy', :price => '20.50', :description => 'camping items', :unit => 'set')
	Facility.create(:name => 'Camp Bed', :price => '12.00', :description => 'camping bad', :unit => 'set')
	Facility.create(:name => 'Color TV', :price => '10.00', :description => 'color tv rent by week', :unit => 'week')
	
  end
  
  def self.down
    drop_table :facilities
  end
end
