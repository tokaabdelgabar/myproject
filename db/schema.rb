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

ActiveRecord::Schema.define(version: 2019_02_10_182827) do

  create_table "about_us", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
    t.string "paragraph1heading"
    t.string "paragraph1content"
    t.string "paragraph2heading"
    t.string "paragraph2content"
    t.string "paragraph3heading"
    t.string "paragraph3content"
    t.string "picture_alt"
  end

  create_table "app_translations", force: :cascade do |t|
    t.integer "app_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["app_id"], name: "index_app_translations_on_app_id"
    t.index ["locale"], name: "index_app_translations_on_locale"
  end

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "developer"
    t.string "youtubeLink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "category_id"
    t.string "app_img_file_name"
    t.string "app_img_content_type"
    t.integer "app_img_file_size"
    t.datetime "app_img_updated_at"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.string "image4_file_name"
    t.string "image4_content_type"
    t.integer "image4_file_size"
    t.datetime "image4_updated_at"
    t.string "image5_file_name"
    t.string "image5_content_type"
    t.integer "image5_file_size"
    t.datetime "image5_updated_at"
    t.decimal "price"
    t.decimal "price_pro"
    t.decimal "size"
    t.string "app_type"
    t.string "youtube_link"
    t.string "image1_alt"
    t.string "image2_alt"
    t.string "image3_alt"
    t.string "image4_alt"
    t.string "image5_alt"
    t.string "app_img_alt"
    t.string "youtube_alt"
    t.string "android_link"
    t.string "ios_link"
    t.string "windows_link"
    t.text "searchDescription"
    t.integer "pick_id"
  end

  create_table "apptranslations", force: :cascade do |t|
    t.integer "app_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_translations", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "content"
    t.index ["category_id"], name: "index_category_translations_on_category_id"
    t.index ["locale"], name: "index_category_translations_on_locale"
  end

  create_table "disclaimers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source"
  end

  create_table "help_items", force: :cascade do |t|
    t.string "heading"
    t.string "title1"
    t.string "title2"
    t.string "bullet_heading"
    t.string "bullet1"
    t.string "bullet2"
    t.string "bullet3"
    t.string "bullet5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
    t.string "photo_alt"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notification_translations", force: :cascade do |t|
    t.integer "notification_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.index ["locale"], name: "index_notification_translations_on_locale"
    t.index ["notification_id"], name: "index_notification_translations_on_notification_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.date "date"
    t.string "author"
    t.string "link"
    t.string "image_alt"
  end

  create_table "operatingsystem_translations", force: :cascade do |t|
    t.integer "operatingsystem_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["locale"], name: "index_operatingsystem_translations_on_locale"
    t.index ["operatingsystem_id"], name: "index_operatingsystem_translations_on_operatingsystem_id"
  end

  create_table "operatingsystems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.integer "app_id"
    t.integer "operatingsystem_id"
    t.string "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "picks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "app_id"
  end

  create_table "tab_translations", force: :cascade do |t|
    t.integer "tab_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "paragraph1"
    t.string "paragraph2"
    t.string "paragraph3"
    t.string "paragraph4"
    t.index ["locale"], name: "index_tab_translations_on_locale"
    t.index ["tab_id"], name: "index_tab_translations_on_tab_id"
  end

  create_table "tabs", force: :cascade do |t|
    t.string "name"
    t.string "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "paragraph1"
    t.string "paragraph2"
    t.string "paragraph3"
    t.string "paragraph4"
    t.integer "disclaimer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.date "birthday"
    t.boolean "admin", default: false
    t.boolean "superadmin"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean "app_manager"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

end
