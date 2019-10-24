# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_24_054506) do

  create_table "backgrounds", force: :cascade do |t|
    t.string "personality"
    t.string "ideals"
    t.string "bonds"
    t.string "flaws"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "gender"
    t.integer "int"
    t.integer "str"
    t.integer "dex"
    t.integer "wis"
    t.integer "cha"
    t.integer "con"
    t.integer "int_mod"
    t.integer "str_mod"
    t.integer "dex_mod"
    t.integer "wis_mod"
    t.integer "cha_mod"
    t.integer "con_mod"
    t.integer "hp"
    t.text "equipment"
    t.integer "ac"
    t.string "alignment"
    t.string "size"
    t.string "languages"
    t.text "saving_throws"
    t.string "name"
    t.integer "initiative"
    t.text "traits"
    t.integer "user_id"
    t.integer "race_id"
    t.integer "job_id"
    t.integer "background_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters_skills", id: false, force: :cascade do |t|
    t.integer "skill_id", null: false
    t.integer "character_id", null: false
  end

  create_table "characters_spells", id: false, force: :cascade do |t|
    t.integer "spell_id", null: false
    t.integer "character_id", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "saving_throw_profs"
    t.string "skill_profs"
    t.string "hit_die"
    t.integer "proficiencies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.text "languages"
    t.string "age"
    t.string "size"
    t.string "asi_mod"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability_score"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "range"
    t.string "duration"
    t.integer "level"
    t.string "classes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
