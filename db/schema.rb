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

ActiveRecord::Schema.define(version: 2018_11_21_164232) do

  create_table "annotation_elements", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.string "workplace"
    t.string "position"
    t.date "birthdate"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "soc_media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_participation_note_id"
    t.index ["event_participation_note_id"], name: "index_coaches_on_event_participation_note_id"
  end

  create_table "contest_nominations", force: :cascade do |t|
    t.string "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "availible_for_registration"
    t.text "description"
  end

  create_table "contest_work_members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.string "university"
    t.string "speciality"
    t.decimal "year_of_study"
    t.string "group"
    t.string "address"
    t.date "birthdate"
    t.string "email"
    t.string "phone"
    t.boolean "show_email"
    t.string "soc_media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contest_work_id"
    t.index ["contest_work_id"], name: "index_contest_work_members_on_contest_work_id"
  end

  create_table "contest_works", force: :cascade do |t|
    t.integer "contest_nomination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved"
    t.string "work_title"
    t.string "team_name"
    t.string "mentor"
    t.text "notes"
    t.string "software"
    t.string "ref_to_work"
    t.text "how_learned_about"
    t.boolean "received"
    t.index ["contest_nomination_id"], name: "index_contest_works_on_contest_nomination_id"
  end

  create_table "downloads", force: :cascade do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.string "university"
    t.string "speciality"
    t.decimal "year_of_study"
    t.string "group"
    t.string "address"
    t.date "birthdate"
    t.string "email"
    t.string "phone"
    t.string "soc_media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_participation_note_id"
    t.index ["event_participation_note_id"], name: "index_event_participants_on_event_participation_note_id"
  end

  create_table "event_participation_notes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.text "how_learned_about"
    t.boolean "is_online"
    t.string "title"
    t.text "answers"
    t.boolean "received"
    t.boolean "approved"
    t.index ["event_id"], name: "index_event_participation_notes_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "has_coach"
    t.boolean "has_question"
    t.boolean "is_online_participation_available"
    t.decimal "team_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_registration_available"
  end

  create_table "general_infos", force: :cascade do |t|
    t.string "dates"
    t.boolean "is_registration_active"
    t.string "annotation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "footer"
  end

  create_table "information_elements", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "question_lists", force: :cascade do |t|
    t.text "list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_question_lists_on_event_id"
  end

end
