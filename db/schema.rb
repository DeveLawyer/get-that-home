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

ActiveRecord::Schema.define(version: 2020_09_04_184005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacteds", force: :cascade do |t|
    t.bigint "property_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_contacteds_on_property_id"
    t.index ["user_id"], name: "index_contacteds_on_user_id"
  end

  create_table "favoriteds", force: :cascade do |t|
    t.bigint "property_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_favoriteds_on_property_id"
    t.index ["user_id"], name: "index_favoriteds_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.float "price"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.integer "area"
    t.string "amenities_dpt"
    t.string "amenities_bld"
    t.string "close_by"
    t.text "description"
    t.string "type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "maintenance"
    t.string "property_type"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "seens", force: :cascade do |t|
    t.bigint "property_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_seens_on_property_id"
    t.index ["user_id"], name: "index_seens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "phone_number"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "contacteds", "properties"
  add_foreign_key "contacteds", "users"
  add_foreign_key "favoriteds", "properties"
  add_foreign_key "favoriteds", "users"
  add_foreign_key "properties", "users"
  add_foreign_key "seens", "properties"
  add_foreign_key "seens", "users"
end
