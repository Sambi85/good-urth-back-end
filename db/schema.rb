# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_24_020548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "address"
    t.string "email"
    t.time "open"
    t.time "close"
    t.string "days_open"
    t.boolean "is_open"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone_number"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_orders", force: :cascade do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_id", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "farmer_id"
    t.string "name"
    t.string "purchase_unit"
    t.float "stock_amount"
    t.boolean "item_pulled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.decimal "price", precision: 8, scale: 2
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "borough"
    t.string "latitude"
    t.string "longitude"
    t.string "hours_of_operation"
    t.string "season_dates"
    t.string "location"
    t.string "contact"
    t.string "url"
    t.string "fmnp"
    t.string "snap_status"
    t.string "zip"
    t.string "operation_months_code"
    t.string "phone_number"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "farmer_id"
    t.text "description"
    t.time "time"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.float "subtotal"
    t.float "tax"
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pick_up"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "farmer_id"
    t.integer "star_rating"
    t.text "description"
    t.time "time"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "market_id"
    t.integer "farmer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "days_of_the_week"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.text "bio"
    t.string "email"
    t.integer "phone_number"
    t.text "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
