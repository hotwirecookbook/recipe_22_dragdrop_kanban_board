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

ActiveRecord::Schema[7.1].define(version: 2023_11_07_191152) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kanban_boards", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanban_cards", force: :cascade do |t|
    t.string "title"
    t.bigint "kanban_column_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanban_column_id"], name: "index_kanban_cards_on_kanban_column_id"
  end

  create_table "kanban_columns", force: :cascade do |t|
    t.string "title"
    t.bigint "kanban_board_id", null: false
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanban_board_id"], name: "index_kanban_columns_on_kanban_board_id"
  end

  add_foreign_key "kanban_cards", "kanban_columns"
  add_foreign_key "kanban_columns", "kanban_boards"
end
