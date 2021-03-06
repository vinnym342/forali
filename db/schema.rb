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

ActiveRecord::Schema.define(version: 20170608053936) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "time"
    t.integer "organiser_id"
    t.integer "max_participants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organiser_id"], name: "index_events_on_organiser_id"
  end

  create_table "organiser_follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "organiser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organiser_id"], name: "index_organiser_follows_on_organiser_id"
    t.index ["user_id"], name: "index_organiser_follows_on_user_id"
  end

  create_table "organisers", force: :cascade do |t|
    t.string "name"
    t.integer "owner_id"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_organisers_on_owner_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
