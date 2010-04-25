class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
	Location.create(:name => 'Permanent Caravan', :description => 'permanently moored caravan, as holiday home caravans')
	Location.create(:name => 'Touring', :description => 'Pitches for touring caravans')
	Location.create(:name => 'Caravan Club', :description => 'For caravan clubs')
  end

  def self.down
    drop_table :locations
  end
end
