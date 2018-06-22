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

ActiveRecord::Schema.define(version: 20180622194937) do

  create_table "cities", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "state"
    t.string   "country"
    t.string   "county"
    t.string   "incorporated"
    t.string   "population"
    t.string   "slug"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pins", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_pins_on_place_id"
    t.index ["user_id"], name: "index_pins_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "title"
    t.string   "address"
    t.string   "phone_number"
    t.integer  "type"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "latitude_range"
    t.string   "longitude_range"
    t.integer  "points"
    t.string   "slug"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["city_id"], name: "index_places_on_city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "",   null: false
    t.string   "slug",                   default: "",   null: false
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,    null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.boolean  "purchase_email",         default: true
    t.boolean  "refund_email",           default: true
    t.boolean  "subscription_email",     default: true
    t.boolean  "review_email",           default: true
    t.boolean  "comment_email",          default: true
    t.boolean  "message_email",          default: true
    t.string   "latitude",               default: ""
    t.string   "longitude",              default: ""
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["latitude"], name: "index_users_on_latitude", unique: true
    t.index ["longitude"], name: "index_users_on_longitude", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
