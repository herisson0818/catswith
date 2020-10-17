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

ActiveRecord::Schema.define(version: 2020_10_16_212920) do

  create_table "areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.string "prefecture"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cat_favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "cat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_cat_favorites_on_cat_id"
    t.index ["user_id"], name: "index_cat_favorites_on_user_id"
  end

  create_table "cats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.date "birthday"
    t.string "zip_code"
    t.string "prefecture"
    t.string "city"
    t.string "favorite_thing"
    t.integer "is_trn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nick_name", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.integer "gender", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "zip_code", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "house_number", null: false
    t.string "tel"
    t.string "building_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "token"
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "cat_favorites", "cats"
  add_foreign_key "cat_favorites", "users"
end
