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

ActiveRecord::Schema.define(version: 2020_09_15_151722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.bigint "product_id"
    t.string "system_name"
    t.string "title"
    t.boolean "visible", default: false
    t.text "meta_keywords"
    t.text "meta_description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_articles_on_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.string "system_name"
    t.text "description"
    t.boolean "visible", default: true
    t.integer "position", default: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "meta_keywords"
    t.text "meta_description"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "contact_type"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "option"
  end

  create_table "images", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "manuals", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id"
    t.integer "manual_type"
    t.string "url"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_manuals_on_product_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "system_name"
    t.string "title"
    t.text "meta_keywords"
    t.text "meta_description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_prices", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "sheet_id"
    t.integer "extend_count"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_prices_on_product_id"
    t.index ["sheet_id"], name: "index_product_prices_on_sheet_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "system_name"
    t.string "brand_type"
    t.integer "price"
    t.string "image"
    t.string "image_2"
    t.float "width"
    t.float "height"
    t.string "length"
    t.text "small_desc"
    t.text "desc"
    t.float "base_length"
    t.float "base_weight"
    t.integer "base_price"
    t.integer "base_cost"
    t.integer "base_install"
    t.integer "base_sheet"
    t.float "extend_length"
    t.float "extend_weight"
    t.integer "extend_price"
    t.integer "extend_cost"
    t.integer "extend_install"
    t.integer "extend_sheet"
    t.integer "position"
    t.float "div_weight"
    t.integer "div_price"
    t.integer "div_cost"
    t.integer "min_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.text "add_desc"
    t.text "meta_keywords"
    t.text "meta_description"
    t.string "product_type"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.integer "price"
    t.integer "cost"
    t.text "description"
    t.string "image"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "system_name"
    t.string "link"
  end

  add_foreign_key "articles", "products"
  add_foreign_key "manuals", "products"
  add_foreign_key "product_prices", "products"
  add_foreign_key "product_prices", "sheets"
  add_foreign_key "products", "categories"
end
