# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_01_065134) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_equipments", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_equipments_on_character_id"
    t.index ["equipment_id"], name: "index_character_equipments_on_equipment_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "mana"
    t.integer "life_points"
    t.string "status"
    t.bigint "race_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilities", force: :cascade do |t|
    t.string "name"
    t.integer "damage_points"
    t.string "description"
    t.string "category"
    t.bigint "race_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_habilities_on_race_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.integer "damage_points"
    t.string "description"
    t.string "element"
    t.bigint "race_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_powers_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_characters", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_user_characters_on_character_id"
    t.index ["user_id"], name: "index_user_characters_on_user_id"
  end

  create_table "user_permissions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "permission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_user_permissions_on_permission_id"
    t.index ["user_id"], name: "index_user_permissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "character_equipments", "characters"
  add_foreign_key "character_equipments", "equipment"
  add_foreign_key "characters", "races"
  add_foreign_key "habilities", "races"
  add_foreign_key "powers", "races"
  add_foreign_key "user_characters", "characters"
  add_foreign_key "user_characters", "users"
  add_foreign_key "user_permissions", "permissions"
  add_foreign_key "user_permissions", "users"
end
