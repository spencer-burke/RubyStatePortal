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

ActiveRecord::Schema[8.1].define(version: 2026_01_02_234061) do
  create_table "invitations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.datetime "expires_at"
    t.integer "property_id", null: false
    t.string "token"
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_invitations_on_property_id"
    t.index ["token"], name: "index_invitations_on_token"
    t.index ["unit_id"], name: "index_invitations_on_unit_id"
  end

  create_table "maintenance_requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "property_id", null: false
    t.string "status"
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["property_id"], name: "index_maintenance_requests_on_property_id"
    t.index ["unit_id"], name: "index_maintenance_requests_on_unit_id"
    t.index ["user_id"], name: "index_maintenance_requests_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.integer "property_id", null: false
    t.integer "unit_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["property_id"], name: "index_messages_on_property_id"
    t.index ["unit_id"], name: "index_messages_on_unit_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.string "name"
    t.string "state"
    t.string "street_address"
    t.datetime "updated_at", null: false
    t.string "zip_code"
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "resource_id"
    t.string "resource_type"
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "ip_address"
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "number"
    t.integer "property_id", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_units_on_property_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.integer "property_id"
    t.integer "unit_id"
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
    t.index ["property_id"], name: "index_users_on_property_id"
    t.index ["unit_id"], name: "index_users_on_unit_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "invitations", "properties"
  add_foreign_key "invitations", "units"
  add_foreign_key "maintenance_requests", "properties"
  add_foreign_key "maintenance_requests", "units"
  add_foreign_key "maintenance_requests", "users"
  add_foreign_key "messages", "properties"
  add_foreign_key "messages", "units"
  add_foreign_key "messages", "users"
  add_foreign_key "sessions", "users"
  add_foreign_key "units", "properties"
  add_foreign_key "users", "properties"
  add_foreign_key "users", "units"
end
