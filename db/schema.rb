# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_11_051228) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

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
    t.text "editor1"
  end

  create_table "book_categories", force: :cascade do |t|
    t.string "name"
    t.string "html_selector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "description"
    t.string "image_address"
    t.string "image_alt"
    t.text "book_link"
    t.string "subtitle"
    t.integer "book_category_id"
    t.integer "position"
    t.index ["book_category_id"], name: "index_books_on_book_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "print_name"
    t.decimal "inflation"
    t.decimal "corporate_tax"
    t.decimal "interest_rate"
    t.decimal "unemployment"
    t.decimal "income_tax"
    t.decimal "gdp"
    t.decimal "gov_debt_to_gdp"
    t.decimal "bank_balance_sheet"
    t.decimal "central_bank"
    t.decimal "budget"
  end

  create_table "favorite_quotes", force: :cascade do |t|
    t.text "quote"
    t.string "name"
    t.string "category"
  end

  create_table "github_languages", force: :cascade do |t|
    t.string "language"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "link"
    t.string "image"
    t.string "date"
    t.string "subtitle"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_address"
    t.string "image_alt"
    t.text "project_link"
    t.string "framework"
    t.text "excerpt"
    t.integer "position"
  end

  create_table "proposals_tables", force: :cascade do |t|
    t.string "slug"
    t.string "client"
    t.string "title"
    t.text "intro"
    t.text "body"
    t.text "footer"
    t.string "projects"
    t.string "path"
    t.string "client_key"
    t.string "client_url"
  end

  create_table "stocks", force: :cascade do |t|
    t.decimal "latest_price"
    t.string "company_name"
    t.string "symbol"
    t.datetime "latest_time"
    t.datetime "latest_update"
    t.string "industry"
    t.string "description"
    t.string "primary_exchange"
    t.decimal "gross_profit"
    t.decimal "net_income"
    t.decimal "total_assets"
    t.decimal "total_liabilities"
    t.decimal "total_debt"
    t.decimal "pe_ratio"
    t.decimal "moving_average"
    t.decimal "debt_to_assets"
    t.decimal "net_worth"
    t.float "ytd_change_percent"
    t.string "position"
    t.integer "user_id"
    t.index ["user_id"], name: "index_stocks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "role"
    t.string "admin_security_key"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
