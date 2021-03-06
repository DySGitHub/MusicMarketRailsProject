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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170103022018) do

  create_table "acc_purchases", force: :cascade do |t|
    t.string   "delivery"
    t.string   "address"
    t.string   "country"
    t.integer  "accid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_acc_purchases_on_user_id"
  end

  create_table "accessories", force: :cascade do |t|
    t.string   "brand"
    t.string   "accessorytype"
    t.string   "colour"
    t.integer  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "feedbacks", force: :cascade do |t|
=======
ActiveRecord::Schema.define(version: 20161116093156) do

  create_table "microposts", force: :cascade do |t|
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer  "rating"
    t.index ["user_id", "created_at"], name: "index_feedbacks_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "guitars", force: :cascade do |t|
    t.string   "brand"
    t.string   "guitartype"
    t.string   "colour"
    t.integer  "price"
    t.string   "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piano_purchases", force: :cascade do |t|
    t.string   "delivery"
    t.string   "address"
    t.string   "country"
    t.integer  "pianoid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_piano_purchases_on_user_id"
  end

  create_table "pianos", force: :cascade do |t|
    t.string   "brand"
    t.string   "pianotype"
    t.string   "colour"
    t.integer  "price"
    t.integer  "keys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "delivery"
    t.string   "address"
    t.string   "country"
    t.integer  "guitarid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_purchases_on_user_id"
=======
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_microposts_on_user_id"
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
