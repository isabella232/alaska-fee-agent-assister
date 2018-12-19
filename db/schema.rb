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

ActiveRecord::Schema.define(version: 2018_12_19_232206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fee_agent_name"
    t.string "fee_agent_email"
    t.string "fee_agent_phone_number"
    t.string "client_name"
    t.string "encrypted_client_last_four_ssn"
    t.string "encrypted_client_last_four_ssn_iv"
    t.text "attendee_names"
    t.boolean "selected_snap", default: false
    t.boolean "selected_medicaid", default: false
    t.boolean "selected_general_relief", default: false
    t.boolean "selected_atap", default: false
    t.boolean "selected_apa", default: false
    t.boolean "selected_cama", default: false
    t.boolean "explained_rights", default: false
    t.integer "any_not_listed", default: 0
    t.text "any_not_listed_names"
    t.integer "any_away_from_home", default: 0
    t.text "any_away_from_home_names"
    t.integer "anyone_convicted_drug_felony", default: 0
    t.string "arrival_in_alaska"
    t.integer "intend_to_stay", default: 0
    t.string "convicted_drug_felony_name"
    t.integer "completed_probation_or_parole", default: 0
    t.integer "completed_treatment_program", default: 0
    t.integer "taken_action_towards_rehabilitation", default: 0
    t.integer "complied_with_reentry", default: 0
    t.integer "anyone_tribe", default: 0
    t.text "tribe_details"
    t.integer "anyone_stopped_work", default: 0
    t.text "stopped_work_details"
    t.integer "has_quest_card", default: 0
    t.integer "anyone_filing_tax_return", default: 0
    t.text "filing_tax_return_details"
    t.text "cama_details"
    t.string "expenses_payment_details"
    t.text "other_info"
    t.boolean "client_sign_and_date"
    t.boolean "fa_sign_and_date"
    t.boolean "all_ssns_included"
    t.boolean "has_rent_mortgage_expense", default: false
    t.boolean "has_space_rent_expense", default: false
    t.boolean "has_property_tax_expense", default: false
    t.boolean "has_child_support_expense", default: false
    t.boolean "has_home_insurance_expense", default: false
    t.boolean "has_child_care_expense", default: false
    t.boolean "has_medical_care_medicine_expense", default: false
    t.boolean "has_wood_coal_expense", default: false
    t.boolean "has_telephone_expense", default: false
    t.boolean "has_water_sewage_expense", default: false
    t.boolean "has_electricity_expense", default: false
    t.boolean "has_propane_gas_expense", default: false
    t.boolean "has_oil_expense", default: false
  end

  create_table "navigators", force: :cascade do |t|
    t.bigint "interview_id"
    t.integer "interview_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lived_outside_alaska", default: 0
    t.integer "citizen", default: 0
    t.boolean "children_in_home", default: false
    t.index ["interview_id"], name: "index_navigators_on_interview_id"
  end

end
