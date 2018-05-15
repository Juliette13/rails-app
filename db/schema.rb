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

ActiveRecord::Schema.define(version: 20180403135716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "current_watch_series", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "serie_id"
    t.index ["serie_id"], name: "index_current_watch_series_on_serie_id"
    t.index ["user_id"], name: "index_current_watch_series_on_user_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "identifiant"
    t.integer "seasonNumber"
    t.integer "episodeNumber"
    t.string "title"
    t.date "diffusionDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "serie_id"
    t.index ["serie_id"], name: "index_episodes_on_serie_id"
  end

  create_table "marks", force: :cascade do |t|
    t.integer "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "episode_id"
    t.bigint "user_id"
    t.index ["episode_id"], name: "index_marks_on_episode_id"
    t.index ["user_id"], name: "index_marks_on_user_id"
  end

  create_table "seen_episode_series", force: :cascade do |t|
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "episode_id"
    t.index ["episode_id"], name: "index_seen_episode_series_on_episode_id"
    t.index ["user_id"], name: "index_seen_episode_series_on_user_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "titre"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "current_watch_series", "series", column: "serie_id"
  add_foreign_key "current_watch_series", "users"
  add_foreign_key "episodes", "series", column: "serie_id"
  add_foreign_key "marks", "episodes"
  add_foreign_key "marks", "users"
  add_foreign_key "seen_episode_series", "episodes"
  add_foreign_key "seen_episode_series", "users"
end
