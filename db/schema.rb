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

ActiveRecord::Schema.define(version: 2018_09_23_112020) do

  create_table "annotation_elements", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competition_team_members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.date "birthdate"
    t.string "university"
    t.string "speciality"
    t.decimal "year_of_study"
    t.string "address"
    t.string "group"
    t.string "email"
    t.string "phone"
    t.integer "competition_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_team_id"], name: "index_competition_team_members_on_competition_team_id"
  end

  create_table "competition_teams", force: :cascade do |t|
    t.string "name"
    t.string "how_learned_about"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_nominations", force: :cascade do |t|
    t.string "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "availible_for_registration"
  end

  create_table "contest_works", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.string "university"
    t.string "speciality"
    t.decimal "year_of_study"
    t.string "group"
    t.string "email"
    t.string "phone"
    t.integer "contest_nomination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved"
    t.index ["contest_nomination_id"], name: "index_contest_works_on_contest_nomination_id"
  end

  create_table "information_elements", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mini_course_listeners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.string "university"
    t.string "speciality"
    t.decimal "year_of_study"
    t.string "group"
    t.string "email"
    t.string "phone"
    t.integer "mini_course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mini_course_id"], name: "index_mini_course_listeners_on_mini_course_id"
  end

  create_table "mini_courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "availible_for_registration"
  end

  create_table "nav_elements", force: :cascade do |t|
    t.string "caption"
    t.string "link"
    t.boolean "new_tab"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
