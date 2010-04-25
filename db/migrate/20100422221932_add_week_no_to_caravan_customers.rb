class AddWeekNoToCaravanCustomers < ActiveRecord::Migration
  def self.up
    add_column :caravan_customers, :week_no, :integer
  end

  def self.down
    remove_column :caravan_customers, :week_no
  end
end
