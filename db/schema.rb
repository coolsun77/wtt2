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

ActiveRecord::Schema.define(version: 20150507094719) do

  create_table "eods", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "miss",       limit: 1, default: false
  end

  add_index "eods", ["user_id"], name: "index_eods_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "objname",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "loceods", force: :cascade do |t|
    t.integer  "eod_id",               limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.float    "familiarization",      limit: 24,  default: 0.0
    t.float    "Review",               limit: 24,  default: 0.0
    t.float    "translation",          limit: 24,  default: 0.0
    t.float    "bugfix",               limit: 24,  default: 0.0
    t.float    "audioonsite",          limit: 24,  default: 0.0
    t.float    "audiodelivery",        limit: 24,  default: 0.0
    t.float    "N_Review",             limit: 24,  default: 0.0
    t.float    "N_translation",        limit: 24,  default: 0.0
    t.float    "N_bugfix",             limit: 24,  default: 0.0
    t.float    "polish",               limit: 24,  default: 0.0
    t.float    "Project_Management",   limit: 24,  default: 0.0
    t.float    "Other",                limit: 24,  default: 0.0
    t.float    "familiarization_H",    limit: 24,  default: 0.0
    t.float    "Review_H",             limit: 24,  default: 0.0
    t.float    "translation_H",        limit: 24,  default: 0.0
    t.float    "bugfix_H",             limit: 24,  default: 0.0
    t.float    "audiodelivery_H",      limit: 24,  default: 0.0
    t.float    "N_Review_H",           limit: 24,  default: 0.0
    t.float    "N_translation_H",      limit: 24,  default: 0.0
    t.float    "N_bugfix_H",           limit: 24,  default: 0.0
    t.float    "Project_Management_H", limit: 24,  default: 0.0
    t.float    "Other_H",              limit: 24,  default: 0.0
    t.string   "familiarization_N",    limit: 255, default: " "
    t.string   "translation_N",        limit: 255, default: " "
    t.string   "Review_N",             limit: 255, default: " "
    t.string   "bugfix_N",             limit: 255, default: " "
    t.string   "audiodelivery_N",      limit: 255, default: " "
    t.string   "N_Review_N",           limit: 255, default: " "
    t.string   "N_translation_N",      limit: 255, default: " "
    t.string   "N_bugfix_N",           limit: 255, default: " "
    t.float    "audioonsite_H",        limit: 24,  default: 0.0
    t.string   "audioonsite_N",        limit: 255, default: " "
    t.float    "polish_H",             limit: 24,  default: 0.0
    t.string   "polish_N",             limit: 255, default: " "
    t.string   "Project_Management_N", limit: 255, default: " "
    t.string   "Other_N",              limit: 255, default: " "
    t.integer  "game_id",              limit: 4
    t.float    "mis_meeting",          limit: 24,  default: 0.0
    t.float    "mis_training",         limit: 24,  default: 0.0
    t.float    "mis_others",           limit: 24,  default: 0.0
    t.float    "ab_sickleave",         limit: 24,  default: 0.0
    t.float    "ab_shiftleave",        limit: 24,  default: 0.0
    t.float    "ab_annualleave",       limit: 24,  default: 0.0
    t.float    "ab_holiday",           limit: 24,  default: 0.0
    t.float    "ab_others",            limit: 24,  default: 0.0
    t.string   "mis_meeting_N",        limit: 255, default: " "
    t.string   "mis_training_N",       limit: 255, default: " "
    t.string   "mis_others_N",         limit: 255, default: " "
    t.string   "ab_sickleave_N",       limit: 255, default: " "
    t.string   "ab_shiftleave_N",      limit: 255, default: " "
    t.string   "ab_annualleave_N",     limit: 255, default: " "
    t.string   "ab_holiday_N",         limit: 255, default: " "
    t.string   "ab_others_N",          limit: 255, default: " "
    t.float    "vpp",                  limit: 24,  default: 0.0
    t.float    "vpp_H",                limit: 24,  default: 0.0
    t.float    "N_vpp",                limit: 24,  default: 0.0
    t.float    "N_vpp_H",              limit: 24,  default: 0.0
    t.string   "vpp_N",                limit: 255, default: " "
    t.string   "N_vpp_N",              limit: 255, default: " "
  end

  add_index "loceods", ["eod_id"], name: "index_loceods_on_eod_id", using: :btree

  create_table "qaeods", force: :cascade do |t|
    t.integer  "eod_id",                  limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.float    "Pre_QA",                  limit: 24,  default: 0.0
    t.float    "Review",                  limit: 24,  default: 0.0
    t.float    "QA",                      limit: 24,  default: 0.0
    t.float    "Bug_Management_report",   limit: 24,  default: 0.0
    t.float    "Bug_Management_retest",   limit: 24,  default: 0.0
    t.float    "Audio_QA",                limit: 24,  default: 0.0
    t.float    "N_Review",                limit: 24,  default: 0.0
    t.float    "N_QA",                    limit: 24,  default: 0.0
    t.float    "N_Bug_Management_report", limit: 24,  default: 0.0
    t.float    "N_Bug_Management_retest", limit: 24,  default: 0.0
    t.float    "Project_Management",      limit: 24,  default: 0.0
    t.float    "Other",                   limit: 24,  default: 0.0
    t.float    "Pre_QA_H",                limit: 24,  default: 0.0
    t.float    "Review_H",                limit: 24,  default: 0.0
    t.float    "QA_H",                    limit: 24,  default: 0.0
    t.float    "Bug_Management_H",        limit: 24,  default: 0.0
    t.float    "Audio_QA_H",              limit: 24,  default: 0.0
    t.float    "N_Review_H",              limit: 24,  default: 0.0
    t.float    "N_QA_H",                  limit: 24,  default: 0.0
    t.float    "N_Bug_Management_H",      limit: 24,  default: 0.0
    t.float    "Project_Management_H",    limit: 24,  default: 0.0
    t.float    "Other_H",                 limit: 24,  default: 0.0
    t.string   "Pre_QA_N",                limit: 255, default: " "
    t.string   "Review_N",                limit: 255, default: " "
    t.string   "QA_N",                    limit: 255, default: " "
    t.string   "Bug_Management_N",        limit: 255, default: " "
    t.string   "Audio_QA_N",              limit: 255, default: " "
    t.string   "N_Review_N",              limit: 255, default: " "
    t.string   "N_QA_N",                  limit: 255, default: " "
    t.string   "N_Bug_Management_N",      limit: 255, default: " "
    t.string   "Project_Management_N",    limit: 255, default: " "
    t.string   "Other_N",                 limit: 255, default: " "
    t.integer  "game_id",                 limit: 4
    t.float    "mis_meeting",             limit: 24,  default: 0.0
    t.float    "mis_training",            limit: 24,  default: 0.0
    t.float    "mis_others",              limit: 24,  default: 0.0
    t.float    "ab_sickleave",            limit: 24,  default: 0.0
    t.float    "ab_shiftleave",           limit: 24,  default: 0.0
    t.float    "ab_annualleave",          limit: 24,  default: 0.0
    t.float    "ab_holiday",              limit: 24,  default: 0.0
    t.float    "ab_others",               limit: 24,  default: 0.0
    t.string   "mis_meeting_N",           limit: 255, default: " "
    t.string   "mis_training_N",          limit: 255, default: " "
    t.string   "mis_others_N",            limit: 255, default: " "
    t.string   "ab_sickleave_N",          limit: 255, default: " "
    t.string   "ab_shiftleave_N",         limit: 255, default: " "
    t.string   "ab_annualleave_N",        limit: 255, default: " "
    t.string   "ab_holiday_N",            limit: 255, default: " "
    t.string   "ab_others_N",             limit: 255, default: " "
    t.float    "vpp",                     limit: 24,  default: 0.0
    t.float    "vpp_H",                   limit: 24,  default: 0.0
    t.float    "N_vpp",                   limit: 24,  default: 0.0
    t.float    "N_vpp_H",                 limit: 24,  default: 0.0
    t.float    "bug_audio",               limit: 24,  default: 0.0
    t.float    "bug_text",                limit: 24,  default: 0.0
    t.float    "bug_fastfix",             limit: 24,  default: 0.0
    t.float    "bug_functional",          limit: 24,  default: 0.0
    t.string   "vpp_N",                   limit: 255, default: " "
    t.string   "N_vpp_N",                 limit: 255, default: " "
    t.string   "bug_audio_N",             limit: 255, default: " "
    t.string   "bug_text_N",              limit: 255, default: " "
    t.string   "bug_fastfix_N",           limit: 255, default: " "
    t.string   "bug_functional_N",        limit: 255, default: " "
    t.float    "N_bug_audio",             limit: 24,  default: 0.0
    t.float    "N_bug_text",              limit: 24,  default: 0.0
    t.float    "N_bug_fastfix",           limit: 24,  default: 0.0
    t.float    "N_bug_functional",        limit: 24,  default: 0.0
    t.string   "N_bug_audio_N",           limit: 255, default: " "
    t.string   "N_bug_text_N",            limit: 255, default: " "
    t.string   "N_bug_fastfix_N",         limit: 255, default: " "
    t.string   "N_bug_functional_N",      limit: 255, default: " "
  end

  add_index "qaeods", ["eod_id"], name: "index_qaeods_on_eod_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "role",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "eods", "users"
  add_foreign_key "loceods", "eods"
  add_foreign_key "qaeods", "eods"
end
