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

ActiveRecord::Schema.define(version: 20140512211412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string "line1"
    t.string "order_id"
  end

  add_index "addresses", ["order_id"], name: "index_addresses_on_order_id", using: :btree

  create_table "line_items", force: true do |t|
    t.integer "order_id"
    t.string  "description"
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "magazines", force: true do |t|
    t.string "name"
  end

  create_table "orders", force: true do |t|
    t.string "number"
  end

  create_table "subscribers", force: true do |t|
    t.string "name"
  end

  create_table "subscriptions", force: true do |t|
    t.string  "name"
    t.integer "magazine_id"
    t.integer "subscriber_id"
    t.date    "expires_on"
  end

  add_index "subscriptions", ["magazine_id"], name: "index_subscriptions_on_magazine_id", using: :btree
  add_index "subscriptions", ["subscriber_id"], name: "index_subscriptions_on_subscriber_id", using: :btree

end
