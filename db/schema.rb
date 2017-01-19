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

ActiveRecord::Schema.define(version: 20170118025534) do

  create_table "product_photos", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "product_id"
  end

  add_index "product_photos", ["product_id"], name: "index_product_photos_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.float    "sale_off"
    t.text     "description"
    t.boolean  "is_service"
    t.boolean  "product_active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "type_id"
    t.integer  "vendor_id"
    t.string   "video_url"
    t.text     "caption"
  end

  add_index "products", ["type_id"], name: "index_products_on_type_id"
  add_index "products", ["vendor_id"], name: "index_products_on_vendor_id"

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
