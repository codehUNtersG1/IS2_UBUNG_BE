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

ActiveRecord::Schema.define(version: 20180316163539) do

  create_table "achievements", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "diets", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diets_foods", id: false, force: :cascade do |t|
    t.integer "diet_id"
    t.integer "food_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "sort"
    t.string "description"
    t.string "averageprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "sort"
    t.text "description"
    t.integer "num_members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.text "description"
    t.float "weight"
    t.integer "height"
    t.datetime "start"
    t.datetime "current_time"
    t.integer "num_achievements"
    t.integer "num_diets"
    t.integer "num_physical_activities"
    t.integer "num_groups"
    t.integer "num_events"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "phyactivities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "duration"
    t.string "required_elements"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phyactivity_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_places_on_event_id"
    t.index ["phyactivity_id"], name: "index_places_on_phyactivity_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "sort"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans_physical_activities", id: false, force: :cascade do |t|
    t.integer "plan_id"
    t.integer "phyactivity_id"
  end

  create_table "tipactivities", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipdiets", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_comments", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "achievement_id"
  end

  create_table "users_diets", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "diet_id"
  end

  create_table "users_events", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  create_table "users_groups", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "users_plans", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
  end

  create_table "users_tip_activities", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tipactivity_id"
  end

  create_table "users_tip_diets", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tipdiet_id"
  end

end
