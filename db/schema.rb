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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141118233710) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141117181054) do
=======
ActiveRecord::Schema.define(version: 20141119153433) do
>>>>>>> 97b59e9... admins add lat and long to location, maps are linked to location show page
>>>>>>> admins can add lat and long to locations, locations link to google maps

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> admins can add lat and long to locations, locations link to google maps
  create_table "listings", force: true do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.integer  "user_id"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_id"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
  end

=======
    t.integer  "longitude"
    t.integer  "latitude"
  end

>>>>>>> 97b59e9... admins add lat and long to location, maps are linked to location show page
>>>>>>> admins can add lat and long to locations, locations link to google maps
  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
