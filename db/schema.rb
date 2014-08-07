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

ActiveRecord::Schema.define(version: 20140804060110) do

  create_table "friends", force: true do |t|
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.boolean  "share_to"
  end

  add_index "friends", ["person_id", "friend_id"], name: "index_friends_on_person_id_and_friend_id", unique: true

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "phone"
    t.integer  "qq"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "is_sharad",  default: false
    t.string   "wechat_num"
    t.string   "conpany"
    t.string   "job"
    t.string   "skype"
    t.string   "MSN"
    t.string   "location"
  end

  add_index "people", ["qq"], name: "index_people_on_qq", unique: true
  add_index "people", ["wechat_num"], name: "index_people_on_wechat_num", unique: true

  create_table "shared_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "shared_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shared_people", ["person_id", "shared_id"], name: "index_shared_people_on_person_id_and_shared_id", unique: true

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
