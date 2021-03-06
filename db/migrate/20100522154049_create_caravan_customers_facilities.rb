class CreateCaravanCustomersFacilities < ActiveRecord::Migration
  def self.up
    create_table :caravan_customers_facilities do |t|
      t.integer :caravan_customer_id
      t.integer :facility_id
      t.decimal :qty
      t.string :unit
      t.timestamps
    end
  end
  
  def self.down
    drop_table :caravan_customers_facilities
  end
end
