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

ActiveRecord::Schema.define(version: 20170819084400) do

  create_table "Blockchains", force: :cascade do |t|
    t.integer  "salesperson_id"
    t.integer  "product_id"
    t.string   "state"
    t.string   "city"
    t.integer  "customer_id"
    t.integer  "company_id"
    t.integer  "source_id"
    t.decimal  "price"
    t.string   "metric"
    t.decimal  "tons"
    t.string   "mode"
    t.string   "terms"
    t.string   "ship_start"
    t.string   "completed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "dob"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companylocations", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "city"
    t.string   "state"
    t.integer  "product_id"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "promise_id"
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.string   "dob"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locationdetails", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "location_id"
    t.integer  "product_id"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "title"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "visited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modes", force: :cascade do |t|
    t.string   "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "duration"
    t.text     "description"
    t.string   "image_url"
    t.integer  "director_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "ncontent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salespeople", force: :cascade do |t|
    t.string   "salesperson"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shiptolocations", force: :cascade do |t|
    t.integer  "state"
    t.string   "county"
    t.string   "city"
    t.integer  "shiptonumber"
    t.string   "shiptoname"
    t.string   "nickname"
    t.string   "nh3"
    t.string   "uan"
    t.string   "urea"
    t.string   "an"
    t.string   "truck"
    t.string   "rail"
    t.string   "unittrain"
    t.string   "railline"
    t.string   "barge"
    t.integer  "nh3storage"
    t.integer  "uanstorage"
    t.integer  "ureastorage"
    t.integer  "anstorage"
    t.integer  "nh32015"
    t.integer  "nh32016"
    t.integer  "nh32017"
    t.integer  "uan2015"
    t.integer  "uan2016"
    t.integer  "uan2017"
    t.integer  "urea2015"
    t.integer  "urea2016"
    t.integer  "urea2017"
    t.integer  "an2015"
    t.integer  "an2016"
    t.integer  "an2017"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "parent"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
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
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
