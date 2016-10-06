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

ActiveRecord::Schema.define(version: 20161006181850) do

  create_table "beds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_beds_on_name"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.float    "score"
    t.date     "score_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_employees_on_name"
    t.index ["score"], name: "index_employees_on_score"
  end

  create_table "fullfillments", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "bed_id"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bed_id"], name: "index_fullfillments_on_bed_id"
    t.index ["date"], name: "index_fullfillments_on_date"
    t.index ["employee_id"], name: "index_fullfillments_on_employee_id"
  end

  create_table "month_duties", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "count"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["date"], name: "index_month_duties_on_date"
    t.index ["employee_id"], name: "index_month_duties_on_employee_id"
  end

end
