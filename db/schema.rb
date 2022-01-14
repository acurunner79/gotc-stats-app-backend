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

ActiveRecord::Schema.define(version: 2022_01_14_210726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cavalries", force: :cascade do |t|
    t.decimal "cav_attack"
    t.decimal "cav_defense"
    t.decimal "cav_health"
    t.decimal "cav_attack_vs_player"
    t.decimal "cav_defense_vs_player"
    t.decimal "cav_health_vs_player"
    t.decimal "cav_attack_vs_players_inf"
    t.decimal "cav_attack_vs_players_ranged"
    t.decimal "cav_attack_vs_players_cav"
    t.decimal "cav_attack_vs_players_siege"
    t.decimal "cav_defense_vs_players_cav"
    t.decimal "cav_defense_vs_players_inf"
    t.decimal "cav_defense_vs_players_ranged"
    t.decimal "cav_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "infantries", force: :cascade do |t|
    t.decimal "inf_attack"
    t.decimal "inf_defense"
    t.decimal "inf_health"
    t.decimal "inf_attack_vs_player"
    t.decimal "inf_defense_vs_player"
    t.decimal "inf_health_vs_player"
    t.decimal "inf_attack_vs_players_inf"
    t.decimal "inf_attack_vs_players_range"
    t.decimal "inf_attack_vs_players_cav"
    t.decimal "inf_defense_vs_players_cav"
    t.decimal "inf_defense_vs_players_inf"
    t.decimal "inf_defense_vs_players_range"
    t.decimal "inf_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "rangeds", force: :cascade do |t|
    t.decimal "range_attack"
    t.decimal "range_defense"
    t.decimal "range_health"
    t.decimal "range_attack_vs_player"
    t.decimal "range_defense_vs_player"
    t.decimal "range_health_vs_player"
    t.decimal "range_attack_vs_players_inf"
    t.decimal "range_attack_vs_players_range"
    t.decimal "range_attack_vs_players_cav"
    t.decimal "range_attack_vs_players_siege"
    t.decimal "range_defense_vs_players_cav"
    t.decimal "range_defense_vs_players_inf"
    t.decimal "range_defense_vs_players_range"
    t.decimal "range_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "ingame_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
