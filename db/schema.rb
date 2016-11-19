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

ActiveRecord::Schema.define(version: 20161116191522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.float    "pos_x",                    null: false
    t.float    "pos_y",                    null: false
    t.text     "tags",        default: [],              array: true
    t.text     "information"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "floors", force: :cascade do |t|
    t.float    "pos_x",                    null: false
    t.float    "pos_y",                    null: false
    t.text     "tags",        default: [],              array: true
    t.text     "information"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.float    "pos_x",                    null: false
    t.float    "pos_y",                    null: false
    t.text     "tags",        default: [],              array: true
    t.text     "information"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "territories", force: :cascade do |t|
    t.float    "pos_x",                    null: false
    t.float    "pos_y",                    null: false
    t.text     "tags",        default: [],              array: true
    t.text     "information"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.index ["activation_token"], name: "index_users_on_activation_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  create_table "workers", force: :cascade do |t|
    t.text     "post",                null: false
    t.string   "phone"
    t.text     "first_name",          null: false
    t.text     "second_name"
    t.text     "last_name",           null: false
    t.string   "mail",                null: false
    t.text     "duty",                null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
