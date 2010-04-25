# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100422225416) do

  create_table "caravan_customers", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "caravan_id"
    t.integer  "location_id"
    t.integer  "no_of_adults"
    t.integer  "no_of_children"
    t.date     "arrival_date"
    t.date     "departure_date"
    t.integer  "deposit_paid",   :limit => 10, :precision => 10, :scale => 0
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "week_no"
  end

  create_table "caravan_facilities", :force => true do |t|
    t.integer  "caravan_customer_id"
    t.integer  "facility_id"
    t.integer  "qty",                 :limit => 10, :precision => 10, :scale => 0
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravans", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "caravan_type_id"
    t.integer  "pitch_no"
    t.date     "build_date"
    t.integer  "price",           :limit => 10, :precision => 10, :scale => 0
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charges", :force => true do |t|
    t.string   "name"
    t.integer  "price",      :limit => 10, :precision => 10, :scale => 0
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "title"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "postcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.integer  "price",       :limit => 10, :precision => 10, :scale => 0
    t.string   "description"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owner_charges", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "charge_id"
    t.string   "for_year"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.string   "title"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "postcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
