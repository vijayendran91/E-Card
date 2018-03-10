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

ActiveRecord::Schema.define(version: 20180310164738) do

  create_table "admins", force: :cascade do |t|
    t.string "a_user"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gadmins", force: :cascade do |t|
    t.string "user_id"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "user_name", null: false
    t.string "fname"
    t.string "lname"
    t.string "mname"
    t.string "email"
    t.string "passport"
    t.string "aadhaar"
    t.integer "flag"
    t.string "password_digest"
    t.string "father_name"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "passport_file_name"
    t.string "passport_content_type"
    t.integer "passport_file_size"
    t.datetime "passport_updated_at"
    t.string "passport_image_file_name"
    t.string "passport_image_content_type"
    t.integer "passport_image_file_size"
    t.datetime "passport_image_updated_at"
    t.string "aadhar_image_file_name"
    t.string "aadhar_image_content_type"
    t.integer "aadhar_image_file_size"
    t.datetime "aadhar_image_updated_at"
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end
