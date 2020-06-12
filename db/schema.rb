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

ActiveRecord::Schema.define(version: 2020_06_12_063756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_points", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "longitude", default: "0.0"
    t.decimal "latitude", default: "0.0"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "cloud_infos", force: :cascade do |t|
    t.datetime "date"
    t.decimal "amfstrat", default: "0.0"
    t.decimal "latidude", default: "0.0"
    t.decimal "amftropclear", default: "0.0"
    t.decimal "amftropcloudy", default: "0.0"
    t.decimal "logitude", default: "0.0"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cloud_infos_on_city_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "abbreviature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_weathers", force: :cascade do |t|
    t.decimal "temperature"
    t.decimal "humidity"
    t.decimal "radiation"
    t.decimal "feels_like"
    t.decimal "dew_point"
    t.decimal "wind_speed"
    t.decimal "preasure"
    t.datetime "time_in_unix"
    t.string "weather_description"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "komunes", force: :cascade do |t|
    t.string "value"
    t.string "photo"
    t.decimal "co2_foot_print_value"
    t.decimal "latitude"
    t.decimal "logitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_komunes_on_user_id"
  end

  create_table "polution_infos", force: :cascade do |t|
    t.datetime "date"
    t.decimal "vcdapstrat", default: "0.0"
    t.decimal "vcdaptrop", default: "0.0"
    t.decimal "amfstrat", default: "0.0"
    t.decimal "latidude", default: "0.0"
    t.decimal "logitude", default: "0.0"
    t.decimal "vcdapbelowcloud", default: "0.0"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_polution_infos_on_city_id"
  end

  create_table "raidition_infos", force: :cascade do |t|
    t.datetime "date"
    t.decimal "terrain_reflectivity", default: "0.0"
    t.decimal "point_radius", default: "0.0"
    t.decimal "latidude", default: "0.0"
    t.decimal "logitude", default: "0.0"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_raidition_infos_on_city_id"
  end

  create_table "rain_infos", force: :cascade do |t|
    t.datetime "date"
    t.decimal "value", default: "0.0"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_rain_infos_on_city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.decimal "latitude", default: "0.0"
    t.decimal "longitude", default: "0.0"
    t.string "phone"
    t.string "fullname"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "cloud_infos", "cities"
  add_foreign_key "polution_infos", "cities"
  add_foreign_key "raidition_infos", "cities"
  add_foreign_key "rain_infos", "cities"
  add_foreign_key "users", "cities"
end
