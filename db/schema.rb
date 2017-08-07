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

ActiveRecord::Schema.define(version: 20170807152735) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "dob"
    t.text     "bio"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blockchains", force: :cascade do |t|
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
    t.date     "ship_start"
    t.string   "completed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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

end
