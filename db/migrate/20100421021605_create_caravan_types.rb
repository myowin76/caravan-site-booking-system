class CreateCaravanTypes < ActiveRecord::Migration
  def self.up
    create_table :caravan_types do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
	
	CaravanType.create(:name =>'Standard (8)', :description => 'Caravan with standard facilities, suitable 8 people')
	CaravanType.create(:name =>'Standard (6)', :description => 'Caravan with standard facilities, suitable 6 people')
	CaravanType.create(:name =>'Standard (4)', :description => 'Caravan with standard facilities, suitable 4 people')
	
	CaravanType.create(:name =>'Luxury (8)', :description => 'Caravan with more facilities, suitable 8 people')
	CaravanType.create(:name =>'Luxury (6)', :description => 'Caravan with more facilities, suitable 6 people')
	CaravanType.create(:name =>'Luxury (4)', :description => 'Caravan with more facilities, suitable 4 people')
	
	CaravanType.create(:name =>'Deluxe (8)', :description => 'Caravan with full facilities, suitable 8 people')
	CaravanType.create(:name =>'Deluxe (6)', :description => 'Caravan with full facilities, suitable 6 people')
	
  end
  
  def self.down
    drop_table :caravan_types
  end
end
