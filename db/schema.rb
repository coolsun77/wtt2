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

ActiveRecord::Schema.define(version: 20150410005549) do

  create_table "eods", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eods", ["user_id"], name: "index_eods_on_user_id"

  create_table "games", force: :cascade do |t|
    t.string   "objname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qaeods", force: :cascade do |t|
    t.integer  "eod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qaeods", ["eod_id"], name: "index_qaeods_on_eod_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
