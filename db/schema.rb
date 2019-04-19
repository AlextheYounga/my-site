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

ActiveRecord::Schema.define(version: 2019_04_19_013830) do

  create_table "article_categories", force: :cascade do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer "book_id"
    t.string "title"
    t.string "author"
    t.text "description"
    t.string "image_address"
    t.string "image_alt"
    t.string "category"
    t.text "book_link"
    t.string "subtitle"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_quotes", force: :cascade do |t|
    t.text "quote"
    t.string "name"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_address"
    t.string "image_alt"
    t.text "project_link"
    t.string "framework"
    t.string "color"
    t.string "bg_color"
  end

  create_table "stocks", force: :cascade do |t|
    t.decimal "latest_price"
    t.string "company_name"
    t.string "symbol"
    t.datetime "latest_time"
    t.datetime "latest_update"
  end

  create_table "user_stocks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_id"], name: "index_user_stocks_on_stock_id"
    t.index ["user_id"], name: "index_user_stocks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
