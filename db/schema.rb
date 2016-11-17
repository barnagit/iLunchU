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

ActiveRecord::Schema.define(version: 20161117214907) do

  create_table "guests", force: :cascade do |t|
    t.integer  "User_id"
    t.integer  "Lunch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Lunch_id"], name: "index_guests_on_Lunch_id"
    t.index ["User_id"], name: "index_guests_on_User_id"
  end

  create_table "lunches", force: :cascade do |t|
    t.string   "title"
    t.text     "food"
    t.integer  "max_guests"
    t.datetime "date"
    t.string   "location"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_lunches_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "value"
    t.text     "text"
    t.integer  "User_id"
    t.integer  "Lunch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Lunch_id"], name: "index_votes_on_Lunch_id"
    t.index ["User_id"], name: "index_votes_on_User_id"
  end

end
