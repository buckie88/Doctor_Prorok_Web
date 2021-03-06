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

ActiveRecord::Schema.define(version: 20171012165459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "body", default: "", null: false
    t.boolean "archive", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "category", default: "", null: false
    t.text "body", default: "", null: false
    t.string "picture", default: "", null: false
    t.boolean "archive", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultations", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "patronymic_name", default: "", null: false
    t.integer "age", default: 0, null: false
    t.string "gender", default: "", null: false
    t.string "subject", default: "", null: false
    t.string "importance", default: "", null: false
    t.string "category", default: "", null: false
    t.text "body", default: "", null: false
    t.text "chronic_diseases", default: "", null: false
    t.string "city", default: "", null: false
    t.string "skype", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.text "contact", default: "", null: false
    t.boolean "archive", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "patronymic_name", default: "", null: false
    t.integer "age", default: 0, null: false
    t.string "gender", default: "", null: false
    t.string "category", default: "", null: false
    t.text "body", default: "", null: false
    t.text "chronic_diseases", default: "", null: false
    t.string "city", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.text "contact", default: "", null: false
    t.boolean "archive", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
