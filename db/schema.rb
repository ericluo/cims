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
    t.date    "start_date",     :null => false
    t.date    "end_date",       :null => false
    t.string  "comment",        :null => false
    t.integer "owner_id",       :null => false
    t.integer "assigned_by_id", :null => false
    t.integer "equipment_id",   :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "address",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipment", :force => true do |t|
    t.string   "brand",       :null => false
    t.string   "code",        :null => false
    t.string   "model",       :null => false
    t.float    "price",       :null => false
    t.date     "buy_date",    :null => false
    t.integer  "category_id", :null => false
    t.integer  "owner_id",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "issue_categories", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "issue_priorities", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "issues", :force => true do |t|
    t.string   "subject",      :null => false
    t.text     "description",  :null => false
    t.string   "status",       :null => false
    t.integer  "priority_id",  :null => false
    t.integer  "category_id",  :null => false
    t.integer  "author_id",    :null => false
    t.integer  "applicant_id", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "quanlity",   :null => false
    t.integer  "product_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_categories", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer "category_id", :null => false
    t.string  "brand",       :null => false
    t.string  "mode",        :null => false
    t.string  "detail",      :null => false
  end

  create_table "purchases", :force => true do |t|
    t.date   "buy_date", :null => false
    t.string "buyer",    :null => false
    t.string "supplier", :null => false
    t.text   "comment",  :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "name",                        :null => false
    t.integer  "priority",   :default => 999, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string "name",    :null => false
    t.string "boss",    :null => false
    t.string "address", :null => false
    t.string "phone",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",                                                 :null => false
    t.integer  "priority",                                             :null => false
    t.string   "room",                                                 :null => false
    t.string   "phone",                                                :null => false
    t.integer  "section_id",                                           :null => false
    t.string   "email",                                                :null => false
    t.string   "encrypted_password", :limit => 128,                    :null => false
    t.string   "salt",               :limit => 128,                    :null => false
    t.string   "confirmation_token", :limit => 128,                    :null => false
    t.string   "remember_token",     :limit => 128,                    :null => false
    t.boolean  "email_confirmed",                   :default => false, :null => false
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["id", "confirmation_token"], :name => "index_users_on_id_and_confirmation_token", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token", :unique => true

end
