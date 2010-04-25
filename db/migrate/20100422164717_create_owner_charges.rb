class CreateOwnerCharges < ActiveRecord::Migration
  def self.up
    create_table :owner_charges do |t|
      t.integer :owner_id
      t.integer :charge_id
      t.string :for_year
      t.string :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :owner_charges
  end
end
