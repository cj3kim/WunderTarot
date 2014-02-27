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

ActiveRecord::Schema.define(version: 20140227044449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donations", force: true do |t|
    t.integer  "amount"
    t.integer  "patron_id"
    t.integer  "band_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "human_bond_requests", force: true do |t|
    t.boolean  "accepted"
    t.text     "message"
    t.integer  "patron_id"
    t.integer  "band_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "rejected"
  end

  create_table "human_bonds", force: true do |t|
    t.integer  "monthly_contribution"
    t.boolean  "patron_bond"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patron_id"
    t.integer  "band_id"
  end

  create_table "stripe_customers", force: true do |t|
    t.string   "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stripe_recipients", force: true do |t|
    t.string   "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "tarot_cards", force: true do |t|
    t.string   "name"
    t.text     "meaning"
    t.text     "description"
    t.boolean  "major_arcana"
    t.integer  "major_arcana_number"
    t.integer  "suit_number"
    t.string   "suit"
    t.string   "astrology"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.boolean  "patron"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
