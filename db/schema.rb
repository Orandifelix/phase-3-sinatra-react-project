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

ActiveRecord::Schema.define(version: 2023_07_25_161650) do

  create_table "favorites", force: :cascade do |t|
    t.integer "favorited_by"
    t.integer "you_favorited"
    t.datetime "created_at"
  end

  create_table "inboxs", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "no_of_unread_messages"
    t.datetime "created_at"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "inbox_id"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.text "message_content"
    t.datetime "created_at"
    t.string "read_status"
    t.datetime "read_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.integer "age"
    t.string "location"
    t.string "gender"
    t.string "seeking_gender"
    t.string "marital_status"
    t.text "bio"
    t.string "interest"
    t.string "height"
    t.string "ethnicity"
    t.string "living_with"
    t.string "education_level"
    t.string "no_of_children"
    t.string "drinking_habits"
    t.string "smoking_habits"
    t.text "passion"
    t.string "account_status"
    t.integer "user_id"
    t.datetime "created_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password"
    t.integer "age"
    t.string "gender"
    t.string "seeking_gender"
    t.datetime "created_at"
  end

end
