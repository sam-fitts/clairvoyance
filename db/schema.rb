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

ActiveRecord::Schema.define(version: 20180314070435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.bigint "proposal_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pdf"
    t.bigint "agency_id"
    t.index ["agency_id"], name: "index_contracts_on_agency_id"
    t.index ["proposal_id"], name: "index_contracts_on_proposal_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "budget"
    t.bigint "business_id"
    t.string "tags"
    t.string "name"
    t.string "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "duration"
    t.text "goal"
    t.text "target_audience"
    t.text "info"
    t.string "current_tools"
    t.string "problems"
    t.string "metrics"
    t.string "visiting"
    t.string "season"
    t.boolean "in_house"
    t.text "agencies"
    t.text "non_profit"
    t.boolean "current_metrics"
    t.text "values"
    t.text "tactic"
    t.index ["business_id"], name: "index_projects_on_business_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer "bid_amount"
    t.bigint "agency_id"
    t.bigint "project_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pdf"
    t.boolean "accepted", default: false
    t.index ["agency_id"], name: "index_proposals_on_agency_id"
    t.index ["project_id"], name: "index_proposals_on_project_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "agency"
    t.integer "reviews"
    t.string "reviews_content"
    t.string "business_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contracts", "users", column: "agency_id"
end
