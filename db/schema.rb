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

ActiveRecord::Schema.define(version: 20151010191534) do

  create_table "entities", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_name", limit: 255
    t.integer  "location_lat",  limit: 4
    t.integer  "location_long", limit: 4
  end

  create_table "entities_users", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "entity_id",  limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorite_locations", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "location",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_lat",  limit: 4
    t.integer  "location_long", limit: 4
  end

  create_table "favorite_locations_users", force: :cascade do |t|
    t.integer  "favorite_location_id", limit: 4
    t.integer  "user_id",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "password_hash", limit: 255
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "email",         limit: 255
    t.boolean  "active"
    t.string   "type",          limit: 255
    t.string   "profileImg",    limit: 255
    t.integer  "lat",           limit: 4
    t.integer  "long",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
