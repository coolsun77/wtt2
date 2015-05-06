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

ActiveRecord::Schema.define(version: 20150506085045) do

  create_table "eods", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "miss",       default: false
  end

  add_index "eods", ["user_id"], name: "index_eods_on_user_id"

  create_table "games", force: :cascade do |t|
    t.string   "objname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loceods", force: :cascade do |t|
    t.integer  "eod_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.decimal  "familiarization",      default: 0.0
    t.decimal  "Review",               default: 0.0
    t.decimal  "translation",          default: 0.0
    t.decimal  "bugfix",               default: 0.0
    t.decimal  "audioonsite",          default: 0.0
    t.decimal  "audiodelivery",        default: 0.0
    t.decimal  "N_Review",             default: 0.0
    t.decimal  "N_translation",        default: 0.0
    t.decimal  "N_bugfix",             default: 0.0
    t.decimal  "polish",               default: 0.0
    t.decimal  "Project_Management",   default: 0.0
    t.decimal  "Other",                default: 0.0
    t.decimal  "familiarization_H",    default: 0.0
    t.decimal  "Review_H",             default: 0.0
    t.decimal  "translation_H",        default: 0.0
    t.decimal  "bugfix_H",             default: 0.0
    t.decimal  "audiodelivery_H",      default: 0.0
    t.decimal  "N_Review_H",           default: 0.0
    t.decimal  "N_translation_H",      default: 0.0
    t.decimal  "N_bugfix_H",           default: 0.0
    t.decimal  "Project_Management_H", default: 0.0
    t.decimal  "Other_H",              default: 0.0
    t.string   "familiarization_N",    default: " "
    t.string   "translation_N",        default: " "
    t.string   "Review_N",             default: " "
    t.string   "bugfix_N",             default: " "
    t.string   "audiodelivery_N",      default: " "
    t.string   "N_Review_N",           default: " "
    t.string   "N_translation_N",      default: " "
    t.string   "N_bugfix_N",           default: " "
    t.decimal  "audioonsite_H",        default: 0.0
    t.string   "audioonsite_N",        default: " "
    t.decimal  "polish_H",             default: 0.0
    t.string   "polish_N",             default: " "
    t.string   "Project_Management_N", default: " "
    t.string   "Other_N",              default: " "
    t.integer  "game_id"
    t.decimal  "mis_meeting",          default: 0.0
    t.decimal  "mis_training",         default: 0.0
    t.decimal  "mis_others",           default: 0.0
    t.decimal  "ab_sickleave",         default: 0.0
    t.decimal  "ab_shiftleave",        default: 0.0
    t.decimal  "ab_annualleave",       default: 0.0
    t.decimal  "ab_holiday",           default: 0.0
    t.decimal  "ab_others",            default: 0.0
    t.string   "mis_meeting_N",        default: " "
    t.string   "mis_training_N",       default: " "
    t.string   "mis_others_N",         default: " "
    t.string   "ab_sickleave_N",       default: " "
    t.string   "ab_shiftleave_N",      default: " "
    t.string   "ab_annualleave_N",     default: " "
    t.string   "ab_holiday_N",         default: " "
    t.string   "ab_others_N",          default: " "
  end

  add_index "loceods", ["eod_id"], name: "index_loceods_on_eod_id"

  create_table "qaeods", force: :cascade do |t|
    t.integer  "eod_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.decimal  "Pre_QA",                  default: 0.0
    t.decimal  "Review",                  default: 0.0
    t.decimal  "QA",                      default: 0.0
    t.decimal  "Bug_Management_report",   default: 0.0
    t.decimal  "Bug_Management_retest",   default: 0.0
    t.decimal  "Audio_QA",                default: 0.0
    t.decimal  "N_Review",                default: 0.0
    t.decimal  "N_QA",                    default: 0.0
    t.decimal  "N_Bug_Management_report", default: 0.0
    t.decimal  "N_Bug_Management_retest", default: 0.0
    t.decimal  "Project_Management",      default: 0.0
    t.decimal  "Other",                   default: 0.0
    t.decimal  "Pre_QA_H",                default: 0.0
    t.decimal  "Review_H",                default: 0.0
    t.decimal  "QA_H",                    default: 0.0
    t.decimal  "Bug_Management_H",        default: 0.0
    t.decimal  "Audio_QA_H",              default: 0.0
    t.decimal  "N_Review_H",              default: 0.0
    t.decimal  "N_QA_H",                  default: 0.0
    t.decimal  "N_Bug_Management_H",      default: 0.0
    t.decimal  "Project_Management_H",    default: 0.0
    t.decimal  "Other_H",                 default: 0.0
    t.string   "Pre_QA_N",                default: " "
    t.string   "Review_N",                default: " "
    t.string   "QA_N",                    default: " "
    t.string   "Bug_Management_N",        default: " "
    t.string   "Audio_QA_N",              default: " "
    t.string   "N_Review_N",              default: " "
    t.string   "N_QA_N",                  default: " "
    t.string   "N_Bug_Management_N",      default: " "
    t.string   "Project_Management_N",    default: " "
    t.string   "Other_N",                 default: " "
    t.integer  "game_id"
    t.decimal  "mis_meeting",             default: 0.0
    t.decimal  "mis_training",            default: 0.0
    t.decimal  "mis_others",              default: 0.0
    t.decimal  "ab_sickleave",            default: 0.0
    t.decimal  "ab_shiftleave",           default: 0.0
    t.decimal  "ab_annualleave",          default: 0.0
    t.decimal  "ab_holiday",              default: 0.0
    t.decimal  "ab_others",               default: 0.0
    t.string   "mis_meeting_N",           default: " "
    t.string   "mis_training_N",          default: " "
    t.string   "mis_others_N",            default: " "
    t.string   "ab_sickleave_N",          default: " "
    t.string   "ab_shiftleave_N",         default: " "
    t.string   "ab_annualleave_N",        default: " "
    t.string   "ab_holiday_N",            default: " "
    t.string   "ab_others_N",             default: " "
  end

  add_index "qaeods", ["eod_id"], name: "index_qaeods_on_eod_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
