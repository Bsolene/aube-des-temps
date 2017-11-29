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

ActiveRecord::Schema.define(version: 20171128140426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.bigint "house_id"
    t.boolean "climatisation", default: false
    t.boolean "wifi", default: false
    t.boolean "lave_linge", default: false
    t.boolean "sèche_linge", default: false
    t.boolean "étendoir", default: false
    t.boolean "lave_vaisselle", default: false
    t.boolean "four", default: false
    t.boolean "mixeur", default: false
    t.boolean "vitrocéramique", default: false
    t.boolean "cafetière_nespresso", default: false
    t.boolean "bouilloire", default: false
    t.boolean "grille_pain", default: false
    t.boolean "aspirateur", default: false
    t.boolean "presse_agrume", default: false
    t.boolean "linge", default: false
    t.boolean "drap", default: false
    t.boolean "réfrigerateur", default: false
    t.boolean "téléviseur", default: false
    t.boolean "fer_à_repasser", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_equipment_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "epis"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capacity", default: 0
    t.integer "room", default: 0
    t.integer "single_bed", default: 0
    t.integer "double_bed", default: 0
    t.integer "bathroom", default: 0
    t.string "photos", default: [], array: true
    t.string "calendar_url"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "house_id"
    t.date "start_time", null: false
    t.date "end_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_reservations_on_house_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.string "name"
    t.integer "rating"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_reviews_on_house_id"
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
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipment", "houses"
  add_foreign_key "reservations", "houses"
  add_foreign_key "reviews", "houses"
end
