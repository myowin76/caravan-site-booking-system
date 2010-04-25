class CreateCaravans < ActiveRecord::Migration
  def self.up
    create_table :caravans do |t|
      t.integer :owner_id
      t.integer :caravan_type_id
      t.integer :pitch_no
      t.date :build_date
      t.decimal :price
	  t.boolean :status
      t.timestamps
    end
	Caravan.create(:owner_id => 1, :caravan_type_id => 1, :pitch_no => '1', :build_date => Date.today.year-5, :price => 1000, :status => '')
	Caravan.create(:owner_id => 2, :caravan_type_id => 2, :pitch_no => '2', :build_date => Date.today.year-2, :price => 1200, :status => '')
	Caravan.create(:owner_id => 2, :caravan_type_id => 3, :pitch_no => '3', :build_date => Date.today.year-4, :price => 2000, :status => '')
  end
  
  def self.down
    drop_table :caravans
  end
end
