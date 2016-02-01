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

ActiveRecord::Schema.define(version: 20160201101307) do

  create_table "products", force: :cascade do |t|
    t.string   "category"
    t.string   "unity"
    t.string   "description"
    t.string   "identification"
    t.string   "cost"
    t.string   "selling_price_1"
    t.string   "observations"
    t.string   "provider"
    t.string   "inventory"
    t.string   "barcode"
    t.string   "selling_price_2"
    t.string   "selling_price_3"
    t.float    "min_stock"
    t.float    "max_stock"
    t.float    "stock_purchase"
    t.float    "factor_pcs_of_sales"
    t.string   "ncm"
    t.string   "brand"
    t.float    "weight"
    t.string   "size"
    t.boolean  "inactive"
    t.string   "kind"
    t.string   "composition"
    t.string   "feedstock"
    t.float    "material_imprint"
    t.boolean  "for_sale"
    t.string   "coin"
    t.string   "code"
    t.string   "comments"
    t.float    "pip"
    t.string   "gender"
    t.string   "value"
    t.string   "quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
