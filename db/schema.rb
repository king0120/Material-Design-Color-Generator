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

ActiveRecord::Schema.define(version: 20160118162624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "palette_50",  null: false
    t.string   "palette_100", null: false
    t.string   "palette_200", null: false
    t.string   "palette_300", null: false
    t.string   "palette_400", null: false
    t.string   "palette_500", null: false
    t.string   "palette_600", null: false
    t.string   "palette_700", null: false
    t.string   "palette_800", null: false
    t.string   "palette_900", null: false
    t.string   "accent_100"
    t.string   "accent_200"
    t.string   "accent_400"
    t.string   "accent_700"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "light"
  end

  create_table "palettes", force: :cascade do |t|
    t.string   "name",                       null: false
    t.integer  "score",          default: 0
    t.string   "primary_name",               null: false
    t.string   "secondary_name",             null: false
    t.string   "dark_primary",               null: false
    t.string   "light_primary",              null: false
    t.string   "primary",                    null: false
    t.string   "secondary",                  null: false
    t.string   "text_color",                 null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.integer  "user_score"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
