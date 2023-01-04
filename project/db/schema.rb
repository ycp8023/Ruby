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

ActiveRecord::Schema[7.0].define(version: 2023_01_04_055724) do
  create_table "accprods", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "transaction_order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transaction_order_id"], name: "index_accprods_on_transaction_order_id"
    t.index ["user_id"], name: "index_accprods_on_user_id"
  end

  create_table "actions", force: :cascade do |t|
    t.string "action_type", limit: 64, null: false
    t.string "action_option", limit: 64
    t.string "target_type", limit: 64
    t.bigint "target_id"
    t.string "user_type", limit: 64
    t.bigint "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["action_type", "target_type", "target_id", "user_type", "user_id"], name: "uk_action_target_user", unique: true
    t.index ["target_type", "target_id", "action_type"], name: "index_actions_on_target_type_and_target_id_and_action_type"
    t.index ["user_type", "user_id", "action_type"], name: "index_actions_on_user_type_and_user_id_and_action_type"
  end

  create_table "addcartships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_addcartships_on_product_id"
    t.index ["user_id"], name: "index_addcartships_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_cart_items_on_product_id"
    t.index ["user_id"], name: "index_cart_items_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "rgb"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_colors_on_product_id"
  end

  create_table "designs", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "sales"
    t.string "design_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_designs_on_product_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_favorites_on_product_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "action_type", limit: 64, null: false
    t.string "action_option", limit: 64
    t.string "target_type", limit: 64
    t.bigint "target_id"
    t.string "user_type", limit: 64
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_type", "target_id", "action_type"], name: "index_likes_on_target_type_and_target_id_and_action_type"
    t.index ["user_type", "user_id", "action_type"], name: "index_likes_on_user_type_and_user_id_and_action_type"
  end

  create_table "product_types", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "product_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_types_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "retail_price"
    t.integer "favorites"
    t.integer "sales"
    t.string "description"
    t.string "image_directory"
    t.integer "gender"
    t.integer "added_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pic"
  end

  create_table "sendprods", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.integer "transaction_order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_sendprods_on_admin_id"
    t.index ["transaction_order_id"], name: "index_sendprods_on_transaction_order_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "size_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sizes_on_product_id"
  end

  create_table "stars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stars_on_product_id"
    t.index ["user_id"], name: "index_stars_on_user_id"
  end

  create_table "transaction_orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "cart_item_id", null: false
    t.string "delivery_address"
    t.string "delivery_name"
    t.string "delivery_phone"
    t.string "delivery_postcode"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_item_id"], name: "index_transaction_orders_on_cart_item_id"
    t.index ["user_id"], name: "index_transaction_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.integer "user_role"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accprods", "transaction_orders"
  add_foreign_key "accprods", "users"
  add_foreign_key "addcartships", "users"
  add_foreign_key "addcartships", "users", column: "product_id"
  add_foreign_key "cart_items", "products"
  add_foreign_key "cart_items", "users"
  add_foreign_key "colors", "products"
  add_foreign_key "designs", "products"
  add_foreign_key "favorites", "products"
  add_foreign_key "favorites", "users"
  add_foreign_key "product_types", "products"
  add_foreign_key "sendprods", "admins"
  add_foreign_key "sendprods", "transaction_orders"
  add_foreign_key "sizes", "products"
  add_foreign_key "stars", "products"
  add_foreign_key "stars", "users"
  add_foreign_key "transaction_orders", "cart_items"
  add_foreign_key "transaction_orders", "users"
end
