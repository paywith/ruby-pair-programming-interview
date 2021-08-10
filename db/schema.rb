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

ActiveRecord::Schema.define(version: 2021_07_05_215516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "program_manager_cards", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_manager_customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_manager_transactions", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "parent_transaction_id"
    t.bigint "card_id", null: false
    t.string "type", null: false
    t.string "currency", limit: 3, null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
