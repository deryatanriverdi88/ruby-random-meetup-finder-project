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

ActiveRecord::Schema.define(version: 20190820012546) do

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
  end

  create_table "meetups", force: :cascade do |t|
    t.integer "group_id"
    t.string  "location"
    t.date    "date"
    t.time    "time"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.string  "user_name"
    t.string  "group_name"
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer "user_id"
    t.integer "meetup_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.integer "age"
  end

end
