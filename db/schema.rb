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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141127012058) do

  create_table "line_items", force: true do |t|
    t.integer  "property_id"
    t.integer  "visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["property_id"], name: "index_line_items_on_property_id"
  add_index "line_items", ["visit_id"], name: "index_line_items_on_visit_id"

  create_table "properties", force: true do |t|
    t.string   "property_type"
    t.string   "address"
    t.string   "location"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.integer  "other"
    t.decimal  "rent"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "picture"
    t.string   "picture2"
    t.string   "picture3"
    t.string   "picture4"
    t.string   "picture5"
    t.boolean  "deactivated",   default: false
  end

  add_index "properties", ["user_id", "created_at"], name: "index_properties_on_user_id_and_created_at"
  add_index "properties", ["user_id"], name: "index_properties_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.decimal  "maxrent"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "agent",           default: false
    t.boolean  "owner",           default: false
    t.boolean  "customer",        default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "visits", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
