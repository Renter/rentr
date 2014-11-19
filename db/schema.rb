ActiveRecord::Schema.define(version: 20141119153433) do
  enable_extension "plpgsql"

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
    t.integer  "longitude"
    t.integer  "latitude"
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
