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

ActiveRecord::Schema.define(version: 20150501214958) do

  create_table "availabilities", force: :cascade do |t|
    t.integer "tutor_id"
    t.string  "day"
    t.time    "from"
    t.time    "to"
  end

  add_index "availabilities", ["tutor_id"], name: "index_availabilities_on_tutor_id"

  create_table "courses", force: :cascade do |t|
    t.string "name"
  end

  create_table "tutors", force: :cascade do |t|
    t.integer "course_id"
    t.string  "name"
    t.string  "email"
  end

  add_index "tutors", ["course_id"], name: "index_tutors_on_course_id"

end
