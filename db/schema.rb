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

ActiveRecord::Schema.define(:version => 20091011105422) do

  create_table "assignments", :force => true do |t|
    t.date    "start_date"
    t.date    "end_date"
    t.string  "comment"
    t.integer "owner_id"
    t.integer "assigned_by_id"
    t.integer "equipment_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", :force => true do |t|
    t.string   "brand"
    t.string   "code"
    t.string   "model"
    t.float    "price"
    t.date     "buy_date"
    t.integer  "category_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_categories", :force => true do |t|
    t.string "name"
  end

  create_table "issue_priorities", :force => true do |t|
    t.string "name"
  end

  create_table "issue_statuses", :force => true do |t|
    t.string "name"
  end

  create_table "issues", :force => true do |t|
    t.string   "subject"
    t.text     "description"
    t.integer  "status_id"
    t.integer  "priority_id"
    t.integer  "category_id"
    t.integer  "author_id"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "quanlity"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", :force => true do |t|
    t.string "name"
  end

  create_table "products", :force => true do |t|
    t.integer "category_id"
    t.string  "brand"
    t.string  "mode"
    t.string  "detail"
  end

  create_table "purchases", :force => true do |t|
    t.date   "buy_date"
    t.string "buyer"
    t.string "supplier"
    t.text   "comment"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "priority",   :default => 999
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "account"
    t.string   "name"
    t.string   "room"
    t.string   "phone"
    t.string   "encrypted_password"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string "name"
    t.string "boss"
    t.string "address"
    t.string "phone"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.string   "room"
    t.string   "phone"
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.boolean  "email_confirmed",                   :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "confirmation_token"], :name => "index_users_on_id_and_confirmation_token"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
