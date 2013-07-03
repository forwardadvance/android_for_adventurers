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

ActiveRecord::Schema.define(version: 20130626092633) do

  create_table "answers", force: true do |t|
    t.integer  "person_id"
    t.integer  "completed_exercise_id"
    t.text     "text"
    t.text     "html"
    t.text     "javascript"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "completed_exercises", force: true do |t|
    t.integer  "person_id"
    t.integer  "exercise_slug"
    t.integer  "section_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "completed_exercises", ["exercise_slug"], name: "index_completed_exercises_on_exercise_slug"
  add_index "completed_exercises", ["person_id"], name: "index_completed_exercises_on_person_id"
  add_index "completed_exercises", ["section_slug"], name: "index_completed_exercises_on_section_slug"

  create_table "courses", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "partial"
    t.string   "section_id"
    t.boolean  "is_first_exercise"
    t.boolean  "is_last_exercise"
    t.float    "x_pos",             default: 0.0
    t.float    "y_pos",             default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exercises", ["slug"], name: "index_exercises_on_slug"

  create_table "feedbacks", force: true do |t|
    t.integer  "person_id"
    t.string   "exercise_slug"
    t.string   "section_slug"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "prev_exercise_id"
    t.integer  "next_exercise_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
    t.integer  "person_id"
    t.string   "login_key"
    t.string   "expires"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logins", ["login_key"], name: "index_logins_on_login_key"
  add_index "logins", ["person_id"], name: "index_logins_on_person_id"

  create_table "page_views", force: true do |t|
    t.integer  "person_id"
    t.integer  "url"
    t.string   "referrer"
    t.string   "ip"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_views", ["person_id"], name: "index_page_views_on_person_id"

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "pirate_name"
    t.string   "email"
    t.string   "source"
    t.string   "level"
    t.string   "current_exercise_id"
    t.boolean  "admin",               default: false
    t.string   "enabled",             default: "t"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["email"], name: "index_people_on_email"

  create_table "questions", force: true do |t|
    t.string   "slug"
    t.integer  "exercise_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "sections", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "path"
    t.integer  "course_id"
    t.float    "x_pos",      default: 0.0
    t.float    "y_pos",      default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["slug"], name: "index_sections_on_slug"

end
