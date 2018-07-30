# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180730094728) do

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "nombre_personaje", limit: 255
    t.string   "clase",            limit: 255
    t.string   "raza",             limit: 255
    t.string   "alineamiento",     limit: 255
    t.string   "deidad",           limit: 255
    t.string   "tamaño",           limit: 255
    t.integer  "edad",             limit: 4
    t.string   "sexo",             limit: 255
    t.integer  "altura",           limit: 4
    t.integer  "peso",             limit: 4
    t.string   "ojos",             limit: 255
    t.string   "cabello",          limit: 255
    t.string   "piel",             limit: 255
    t.text     "history",          limit: 65535
    t.string   "rasgos",           limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "nickname",               limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "characters", "users"
end
