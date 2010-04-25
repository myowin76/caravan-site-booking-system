class CreateCaravanCustomers < ActiveRecord::Migration
  def self.up
    create_table :caravan_customers do |t|
      t.integer :customer_id
      t.integer :caravan_id
      t.integer :location_id
      t.integer :no_of_adults
      t.integer :no_of_children
      t.date :arrival_date
      t.date :departure_date
	  #t.integer :from_week_no
	  #t.integer :to_week_no
      t.decimal :deposit_paid
      t.string :status
      t.timestamps
    end
  end
  
  def self.down
    drop_table :caravan_customers
  end
end
