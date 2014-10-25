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

ActiveRecord::Schema.define(version: 20141025021748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.integer  "platform_course_id"
    t.text     "platform"
    t.text     "providor"
    t.text     "name"
    t.text     "description"
    t.text     "category"
    t.text     "duration"
    t.text     "instructor"
    t.text     "language"
    t.text     "photo"
    t.text     "video"
    t.text     "url"
    t.decimal  "price"
    t.integer  "hours_per_week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providors", force: true do |t|
    t.integer  "platform_providor_id"
    t.text     "name"
    t.text     "shortName"
    t.text     "banner"
    t.text     "homeLink"
    t.text     "location"
    t.text     "locationCity"
    t.text     "locationState"
    t.text     "locationCountry"
    t.text     "classLogo"
    t.text     "logo"
    t.text     "squareLogo"
    t.text     "landingPageBanner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.integer  "platform_course_id"
    t.text     "url"
    t.boolean  "active"
    t.text     "duration"
    t.integer  "startDay"
    t.integer  "startMonth"
    t.integer  "startYear"
    t.text     "session_name"
    t.datetime "openDate"
    t.datetime "closeDate"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  add_index "sessions", ["course_id"], name: "index_sessions_on_course_id", using: :btree

end
