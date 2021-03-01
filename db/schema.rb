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

ActiveRecord::Schema.define(version: 2021_03_01_044522) do

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.integer "certificate_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "country"
    t.integer "gross_area"
    t.integer "certified_area"
    t.integer "carpark_area"
    t.integer "project_site_area"
    t.string "code"
    t.integer "construction_year"
    t.string "location_plan_file"
    t.string "site_plan_file"
    t.string "design_brief_file"
    t.string "project_narrative_file"
    t.string "owner", default: "", null: false
    t.string "service_provider", default: "", null: false
    t.string "developer"
    t.integer "certificate_type"
    t.string "service_provider_2"
    t.string "estimated_project_cost"
    t.string "cost_square_meter"
    t.string "estimated_building_cost"
    t.string "estimated_infrastructure_cost"
    t.string "coordinates"
    t.integer "buildings_footprint_area"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
