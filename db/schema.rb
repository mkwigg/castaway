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

ActiveRecord::Schema.define(version: 20160804022100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_items", force: :cascade do |t|
    t.integer "show_id"
    t.integer "order_id"
    t.integer "quantity"
    t.decimal "ad_price"
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["show_id"], name: "index_order_items_on_show_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.string  "status"
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.string "title"
    t.string "network"
    t.string "categories"
    t.string "description"
    t.string "hosts"
    t.string "ui_url"
    t.string "image_files"
  end

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image_path"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "handle"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.string   "bio"
    t.string   "location"
    t.string   "avatar"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "braintree_customer_id"
  end

end
