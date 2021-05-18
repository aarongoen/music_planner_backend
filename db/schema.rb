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

ActiveRecord::Schema.define(version: 2021_05_18_001412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "lectionary"
    t.string "first_reading"
    t.string "psalm_or_canticle"
    t.string "second_reading"
    t.string "gospel"
    t.string "date"
    t.string "date_pretty"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "days_pieces", force: :cascade do |t|
    t.bigint "day_id"
    t.bigint "piece_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_id"], name: "index_days_pieces_on_day_id"
    t.index ["piece_id"], name: "index_days_pieces_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.string "voicing"
    t.string "publisher"
    t.string "collection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "days_pieces", "days"
  add_foreign_key "days_pieces", "pieces"
end
