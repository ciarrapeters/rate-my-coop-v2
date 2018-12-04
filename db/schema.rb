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

ActiveRecord::Schema.define(version: 20181130185938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
  end

  create_table "coop_positions", force: :cascade do |t|
    t.string "position_title"
    t.string "period_of_work"
    t.string "location"
    t.string "review"
    t.integer "star_rating"
    t.bigint "student_id"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_coop_positions_on_company_id"
    t.index ["student_id"], name: "index_coop_positions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "contact"
  end

  add_foreign_key "coop_positions", "companies"
  add_foreign_key "coop_positions", "students"
end
