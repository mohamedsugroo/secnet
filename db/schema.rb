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

ActiveRecord::Schema.define(version: 20180425203554) do

  create_table "bids", force: :cascade do |t|
    t.string   "hourly_rate"
    t.string   "total_rate"
    t.text     "note"
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["job_id"], name: "index_bids_on_job_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "discription"
    t.string   "company_ref"
    t.string   "company_token"
    t.integer  "user_id"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "firstline_address"
    t.string   "postcode"
    t.string   "city"
    t.string   "county"
    t.string   "country"
    t.integer  "mobile"
    t.integer  "utr"
    t.string   "contracts_id"
    t.boolean  "right_to_work_uk"
    t.text     "bio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "uref"
    t.string   "preferred_hourly_rate"
    t.index ["user_id"], name: "index_contractors_on_user_id", unique: true
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "start_date"
    t.string   "end_date"
    t.integer  "hourly_rate"
    t.integer  "number_of_hourse"
    t.boolean  "fixed_price"
    t.boolean  "negotiable_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.time     "start_hour"
    t.time     "end_hour"
    t.integer  "user_id"
    t.decimal  "number_of_guards"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "ltype"
    t.string   "lNumbe"
    t.date     "exdate"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "contractor_id"
    t.integer  "user_id"
    t.string   "photowithlicense_file_name"
    t.string   "photowithlicense_content_type"
    t.integer  "photowithlicense_file_size"
    t.datetime "photowithlicense_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workhistories", force: :cascade do |t|
    t.string   "company_name"
    t.string   "your_role"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "note"
    t.integer  "user_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contractor_id"], name: "index_workhistories_on_contractor_id"
    t.index ["user_id"], name: "index_workhistories_on_user_id"
  end

end
