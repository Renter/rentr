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

ActiveRecord::Schema.define(version: 20141119225836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "date_ranges", force: true do |t|
    t.string   "start_date", null: false
    t.string   "end_date",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
  end

  add_index "date_ranges", ["listing_id"], name: "index_date_ranges_on_listing_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.boolean  "is_main"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "location_id"
    t.string   "city"
    t.string   "street"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_street_address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.string   "full_address"

  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
