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

ActiveRecord::Schema.define(version: 20150624121202) do

  create_table "eods", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.boolean  "miss",       limit: 1,                default: false
    t.decimal  "sumott",               precision: 10, default: 0
    t.decimal  "milestone",            precision: 10, default: 0
  end

  add_index "eods", ["user_id"], name: "index_eods_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "objname",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "loceods", force: :cascade do |t|
    t.integer  "eod_id",               limit: 4
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.decimal  "familiarization",                  precision: 10, default: 0
    t.decimal  "Review",                           precision: 10, default: 0
    t.decimal  "translation",                      precision: 10, default: 0
    t.decimal  "bugfix",                           precision: 10, default: 0
    t.decimal  "audioonsite",                      precision: 10, default: 0
    t.decimal  "audiodelivery",                    precision: 10, default: 0
    t.decimal  "N_Review",                         precision: 10, default: 0
    t.decimal  "N_translation",                    precision: 10, default: 0
    t.decimal  "N_bugfix",                         precision: 10, default: 0
    t.decimal  "polish",                           precision: 10, default: 0
    t.decimal  "Project_Management",               precision: 10, default: 0
    t.decimal  "Other",                            precision: 10, default: 0
    t.decimal  "familiarization_H",                precision: 10, default: 0
    t.decimal  "Review_H",                         precision: 10, default: 0
    t.decimal  "translation_H",                    precision: 10, default: 0
    t.decimal  "bugfix_H",                         precision: 10, default: 0
    t.decimal  "audiodelivery_H",                  precision: 10, default: 0
    t.decimal  "N_Review_H",                       precision: 10, default: 0
    t.decimal  "N_translation_H",                  precision: 10, default: 0
    t.decimal  "N_bugfix_H",                       precision: 10, default: 0
    t.decimal  "Project_Management_H",             precision: 10, default: 0
    t.decimal  "Other_H",                          precision: 10, default: 0
    t.string   "familiarization_N",    limit: 255,                default: " "
    t.string   "translation_N",        limit: 255,                default: " "
    t.string   "Review_N",             limit: 255,                default: " "
    t.string   "bugfix_N",             limit: 255,                default: " "
    t.string   "audiodelivery_N",      limit: 255,                default: " "
    t.string   "N_Review_N",           limit: 255,                default: " "
    t.string   "N_translation_N",      limit: 255,                default: " "
    t.string   "N_bugfix_N",           limit: 255,                default: " "
    t.decimal  "audioonsite_H",                    precision: 10, default: 0
    t.string   "audioonsite_N",        limit: 255,                default: " "
    t.decimal  "polish_H",                         precision: 10, default: 0
    t.string   "polish_N",             limit: 255,                default: " "
    t.string   "Project_Management_N", limit: 255,                default: " "
    t.string   "Other_N",              limit: 255,                default: " "
    t.integer  "game_id",              limit: 4
    t.decimal  "mis_meeting",                      precision: 10, default: 0
    t.decimal  "mis_training",                     precision: 10, default: 0
    t.decimal  "mis_others",                       precision: 10, default: 0
    t.decimal  "ab_sickleave",                     precision: 10, default: 0
    t.decimal  "ab_shiftleave",                    precision: 10, default: 0
    t.decimal  "ab_annualleave",                   precision: 10, default: 0
    t.decimal  "ab_holiday",                       precision: 10, default: 0
    t.decimal  "ab_others",                        precision: 10, default: 0
    t.string   "mis_meeting_N",        limit: 255,                default: " "
    t.string   "mis_training_N",       limit: 255,                default: " "
    t.string   "mis_others_N",         limit: 255,                default: " "
    t.string   "ab_sickleave_N",       limit: 255,                default: " "
    t.string   "ab_shiftleave_N",      limit: 255,                default: " "
    t.string   "ab_annualleave_N",     limit: 255,                default: " "
    t.string   "ab_holiday_N",         limit: 255,                default: " "
    t.string   "ab_others_N",          limit: 255,                default: " "
    t.decimal  "vpp",                              precision: 10, default: 0
    t.decimal  "vpp_H",                            precision: 10, default: 0
    t.decimal  "N_vpp",                            precision: 10, default: 0
    t.decimal  "N_vpp_H",                          precision: 10, default: 0
    t.string   "vpp_N",                limit: 255,                default: " "
    t.string   "N_vpp_N",              limit: 255,                default: " "
    t.date     "date"
    t.decimal  "milestone",                        precision: 10, default: 0
  end

  add_index "loceods", ["eod_id"], name: "index_loceods_on_eod_id", using: :btree

  create_table "milestones", force: :cascade do |t|
    t.string   "milestone",  limit: 255
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "game_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "milestones", ["game_id"], name: "index_milestones_on_game_id", using: :btree

  create_table "qaeods", force: :cascade do |t|
    t.integer  "eod_id",                  limit: 4
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.decimal  "Pre_QA",                              precision: 10, default: 0
    t.decimal  "Review",                              precision: 10, default: 0
    t.decimal  "QA",                                  precision: 10, default: 0
    t.decimal  "Bug_Management_report",               precision: 10, default: 0
    t.decimal  "Bug_Management_retest",               precision: 10, default: 0
    t.decimal  "Audio_QA",                            precision: 10, default: 0
    t.decimal  "N_Review",                            precision: 10, default: 0
    t.decimal  "N_QA",                                precision: 10, default: 0
    t.decimal  "N_Bug_Management_report",             precision: 10, default: 0
    t.decimal  "N_Bug_Management_retest",             precision: 10, default: 0
    t.decimal  "Project_Management",                  precision: 10, default: 0
    t.decimal  "Other",                               precision: 10, default: 0
    t.decimal  "Pre_QA_H",                            precision: 10, default: 0
    t.decimal  "Review_H",                            precision: 10, default: 0
    t.decimal  "QA_H",                                precision: 10, default: 0
    t.decimal  "Bug_Management_H",                    precision: 10, default: 0
    t.decimal  "Audio_QA_H",                          precision: 10, default: 0
    t.decimal  "N_Review_H",                          precision: 10, default: 0
    t.decimal  "N_QA_H",                              precision: 10, default: 0
    t.decimal  "N_Bug_Management_H",                  precision: 10, default: 0
    t.decimal  "Project_Management_H",                precision: 10, default: 0
    t.decimal  "Other_H",                             precision: 10, default: 0
    t.string   "Pre_QA_N",                limit: 255,                default: " "
    t.string   "Review_N",                limit: 255,                default: " "
    t.string   "QA_N",                    limit: 255,                default: " "
    t.string   "Bug_Management_N",        limit: 255,                default: " "
    t.string   "Audio_QA_N",              limit: 255,                default: " "
    t.string   "N_Review_N",              limit: 255,                default: " "
    t.string   "N_QA_N",                  limit: 255,                default: " "
    t.string   "N_Bug_Management_N",      limit: 255,                default: " "
    t.string   "Project_Management_N",    limit: 255,                default: " "
    t.string   "Other_N",                 limit: 255,                default: " "
    t.integer  "game_id",                 limit: 4
    t.decimal  "mis_meeting",                         precision: 10, default: 0
    t.decimal  "mis_training",                        precision: 10, default: 0
    t.decimal  "mis_others",                          precision: 10, default: 0
    t.decimal  "ab_sickleave",                        precision: 10, default: 0
    t.decimal  "ab_shiftleave",                       precision: 10, default: 0
    t.decimal  "ab_annualleave",                      precision: 10, default: 0
    t.decimal  "ab_holiday",                          precision: 10, default: 0
    t.decimal  "ab_others",                           precision: 10, default: 0
    t.string   "mis_meeting_N",           limit: 255,                default: " "
    t.string   "mis_training_N",          limit: 255,                default: " "
    t.string   "mis_others_N",            limit: 255,                default: " "
    t.string   "ab_sickleave_N",          limit: 255,                default: " "
    t.string   "ab_shiftleave_N",         limit: 255,                default: " "
    t.string   "ab_annualleave_N",        limit: 255,                default: " "
    t.string   "ab_holiday_N",            limit: 255,                default: " "
    t.string   "ab_others_N",             limit: 255,                default: " "
    t.decimal  "vpp",                                 precision: 10, default: 0
    t.decimal  "vpp_H",                               precision: 10, default: 0
    t.decimal  "N_vpp",                               precision: 10, default: 0
    t.decimal  "N_vpp_H",                             precision: 10, default: 0
    t.decimal  "bug_audio",                           precision: 10, default: 0
    t.decimal  "bug_text",                            precision: 10, default: 0
    t.decimal  "bug_fastfix",                         precision: 10, default: 0
    t.decimal  "bug_functional",                      precision: 10, default: 0
    t.string   "vpp_N",                   limit: 255,                default: " "
    t.string   "N_vpp_N",                 limit: 255,                default: " "
    t.string   "bug_audio_N",             limit: 255,                default: " "
    t.string   "bug_text_N",              limit: 255,                default: " "
    t.string   "bug_fastfix_N",           limit: 255,                default: " "
    t.string   "bug_functional_N",        limit: 255,                default: " "
    t.decimal  "N_bug_audio",                         precision: 10, default: 0
    t.decimal  "N_bug_text",                          precision: 10, default: 0
    t.decimal  "N_bug_fastfix",                       precision: 10, default: 0
    t.decimal  "N_bug_functional",                    precision: 10, default: 0
    t.string   "N_bug_audio_N",           limit: 255,                default: " "
    t.string   "N_bug_text_N",            limit: 255,                default: " "
    t.string   "N_bug_fastfix_N",         limit: 255,                default: " "
    t.string   "N_bug_functional_N",      limit: 255,                default: " "
    t.date     "date"
    t.decimal  "milestone",                           precision: 10, default: 0
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
  add_foreign_key "milestones", "games"
  add_foreign_key "qaeods", "eods"
end
