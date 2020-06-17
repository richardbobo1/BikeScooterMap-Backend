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

ActiveRecord::Schema.define(version: 2020_06_11_045159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.decimal "start_price"
    t.decimal "price_per_minute"
    t.string "link_to_app"
    t.string "link_to_website"
    t.string "fetch_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "complete_routes", force: :cascade do |t|
    t.integer "route_id"
    t.integer "user_id"
    t.boolean "completed", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_routes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "route_id"
    t.boolean "favorite", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "journals", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "duration"
    t.integer "distance"
    t.string "difficulty"
    t.integer "calories"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "route_id"
    t.integer "rating"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.integer "created_by", default: 1
    t.integer "length"
    t.string "difficulty"
    t.string "surface"
    t.string "short_description"
    t.string "description", default: "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. "
    t.string "tips"
    t.string "google_map", default: "https://www.evelo.com/wp-content/uploads/2019/05/050119-google-hero-1024x450.jpg"
    t.string "source", default: "www.google.com"
    t.string "image_url", default: "https://blog.mapmyrun.com/wp-content/uploads/2018/12/11-Must-Read-Cycling-Stories-of-2018-4.jpg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_companies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.boolean "favorite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "first_name", default: "FirstName"
    t.string "last_name", default: "LastName"
    t.string "password_digest"
    t.string "current_city", default: "Washington, DC"
    t.boolean "admin", default: false
    t.string "img_url", default: "https://fomantic-ui.com/images/avatar2/large/elyse.png"
    t.string "about_me", default: "This is a paragarph about me."
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
