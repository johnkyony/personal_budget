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

ActiveRecord::Schema.define(version: 20151106081835) do

  create_table "expenses", force: :cascade do |t|
    t.string   "name"
    t.decimal  "amount"
    t.boolean  "done"
    t.integer  "wallet_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id"
  add_index "expenses", ["wallet_id"], name: "index_expenses_on_wallet_id"

  create_table "incomes", force: :cascade do |t|
    t.string   "sources"
    t.decimal  "amount"
    t.integer  "tax"
    t.date     "execution_date"
    t.integer  "wallet_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "incomes", ["user_id"], name: "index_incomes_on_user_id"
  add_index "incomes", ["wallet_id"], name: "index_incomes_on_wallet_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wallets", force: :cascade do |t|
    t.string   "name"
    t.decimal  "amount"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "wallets", ["user_id"], name: "index_wallets_on_user_id"

end
