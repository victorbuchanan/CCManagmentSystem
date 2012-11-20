# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121120202327) do

  create_table "addresses", :force => true do |t|
    t.string   "userid"
    t.string   "streetNum"
    t.string   "street"
    t.string   "city"
    t.string   "postalcode"
    t.string   "province"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "administrators", :force => true do |t|
    t.integer  "userid"
    t.integer  "employeeNum"
    t.integer  "adminPin"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "billing_infos", :force => true do |t|
    t.integer  "userid"
    t.string   "cardtype"
    t.string   "ccnumber"
    t.string   "ccexpdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_logs", :force => true do |t|
    t.integer  "userid"
    t.string   "transactionDate"
    t.float    "billAmount"
    t.boolean  "paid"
    t.integer  "adminId"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "userid"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
