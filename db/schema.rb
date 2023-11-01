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

ActiveRecord::Schema[7.0].define(version: 2023_11_01_201110) do
  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "hp"
    t.integer "defense"
    t.integer "sp_attack"
    t.integer "sp_defense"
    t.integer "speed"
    t.string "type_one"
    t.string "type_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons_trainers", id: false, force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "trainer_id", null: false
    t.index ["pokemon_id", "trainer_id"], name: "index_pokemons_trainers_on_pokemon_id_and_trainer_id"
    t.index ["trainer_id", "pokemon_id"], name: "index_pokemons_trainers_on_trainer_id_and_pokemon_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
