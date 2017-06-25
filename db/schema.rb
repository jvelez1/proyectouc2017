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

ActiveRecord::Schema.define(version: 20170625012600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "audits", force: :cascade do |t|
    t.string   "security_controls"
    t.string   "documentation"
    t.string   "version"
    t.integer  "interfaces_quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "db_engie_id"
    t.integer  "operating_system_id"
    t.integer  "provaider_id"
  end

  create_table "db_engies", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.string   "documentation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "development_audits", force: :cascade do |t|
    t.integer "sw_development_id"
    t.integer "audit_id"
    t.index ["audit_id"], name: "index_development_audits_on_audit_id", using: :btree
    t.index ["sw_development_id"], name: "index_development_audits_on_sw_development_id", using: :btree
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.string   "architecture"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "provaiders", force: :cascade do |t|
    t.string   "name"
    t.string   "type_name"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sw_developments", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.string   "documentation"
    t.string   "source_files"
    t.string   "executable_files"
    t.integer  "q_source_files"
    t.integer  "q_executable_files"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.boolean  "auditor"
    t.string   "name",                                null: false
    t.string   "lastname",                            null: false
    t.string   "ci",                                  null: false
    t.string   "phone"
    t.string   "position",                            null: false
    t.string   "department",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
