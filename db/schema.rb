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

ActiveRecord::Schema.define(version: 20190522140459) do

  create_table "adresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id", null: false
    t.string "postal_code", default: "", null: false
    t.string "prefecture", default: "", null: false
    t.string "city", default: "", null: false
    t.string "adress", default: "", null: false
    t.string "build_name", default: "", null: false
    t.index ["user_id"], name: "index_adresses_on_user_id"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "", null: false
  end

  create_table "category_sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "category_id", null: false
    t.bigint "sector_id", null: false
    t.index ["category_id"], name: "index_category_sectors_on_category_id"
    t.index ["sector_id"], name: "index_category_sectors_on_sector_id"
  end

  create_table "category_shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "category_id", null: false
    t.bigint "shop_id", null: false
    t.index ["category_id"], name: "index_category_shops_on_category_id"
    t.index ["shop_id"], name: "index_category_shops_on_shop_id"
  end

  create_table "guides", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "", null: false
    t.text "title", null: false
    t.text "introdution", null: false
    t.string "openning", default: "", null: false
    t.string "closed", default: "", null: false
    t.string "area", default: "", null: false
    t.text "url", null: false
    t.string "location", default: "", null: false
    t.string "access", default: "", null: false
    t.text "map_api", null: false
    t.integer "switching_publication", default: 0, null: false
  end

  create_table "image_shop_guides", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.bigint "image_id", null: false
    t.bigint "guide_id", null: false
    t.index ["guide_id"], name: "index_image_shop_guides_on_guide_id"
    t.index ["image_id"], name: "index_image_shop_guides_on_image_id"
    t.index ["shop_id"], name: "index_image_shop_guides_on_shop_id"
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "logo", null: false
    t.text "outside", null: false
    t.text "inside", null: false
    t.text "dispray", null: false
    t.text "item", null: false
    t.text "owner", null: false
  end

  create_table "infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.text "title", null: false
    t.text "introduction", null: false
    t.text "content", null: false
    t.text "menu", null: false
    t.text "message", null: false
    t.text "switching_publication", null: false
    t.index ["shop_id"], name: "index_infos_on_shop_id"
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.string "postal_code", default: "", null: false
    t.string "prefecture", default: "", null: false
    t.string "city", default: "", null: false
    t.string "adress", default: "", null: false
    t.string "build_name", default: "", null: false
    t.index ["shop_id"], name: "index_locations_on_shop_id"
  end

  create_table "plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.integer "name", default: 0, null: false
    t.text "title", null: false
    t.text "page_path", null: false
    t.index ["shop_id"], name: "index_plans_on_shop_id"
  end

  create_table "privilleges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id", null: false
    t.integer "number", default: 1
    t.index ["user_id"], name: "index_privilleges_on_user_id"
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name_kana", default: "", null: false
    t.string "last_name_kana", default: "", null: false
    t.string "birth_year", default: "", null: false
    t.string "birth_month", default: "", null: false
    t.string "birth_day", default: "", null: false
    t.string "gender", default: "", null: false
    t.string "landline_number", default: "", null: false
    t.string "mobile_phone_number", limit: 11, default: "", null: false
    t.text "introduction", null: false
    t.text "avatar", null: false
    t.integer "switching_publication", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sector_shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.bigint "sector_id", null: false
    t.index ["sector_id"], name: "index_sector_shops_on_sector_id"
    t.index ["shop_id"], name: "index_sector_shops_on_shop_id"
  end

  create_table "sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "", null: false
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id", null: false
    t.string "name", default: "", null: false
    t.string "name_kana", default: "", null: false
    t.text "copy", null: false
    t.string "founded", default: "", null: false
    t.string "openning", default: "", null: false
    t.string "closed", default: "", null: false
    t.string "town_number", default: "", null: false
    t.string "tel_number", default: "", null: false
    t.string "fax_number", default: "", null: false
    t.string "email", default: "", null: false
    t.text "url", null: false
    t.text "map_api", null: false
    t.integer "switching_publiation", default: 0, null: false
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "social_medias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "shop_id", null: false
    t.text "twitter", null: false
    t.text "facebook", null: false
    t.text "instagram", null: false
    t.index ["shop_id"], name: "index_social_medias_on_shop_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nickname", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "pass_token", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "adresses", "users"
  add_foreign_key "category_sectors", "categories"
  add_foreign_key "category_sectors", "sectors"
  add_foreign_key "category_shops", "categories"
  add_foreign_key "category_shops", "shops"
  add_foreign_key "image_shop_guides", "guides"
  add_foreign_key "image_shop_guides", "images"
  add_foreign_key "image_shop_guides", "shops"
  add_foreign_key "infos", "shops"
  add_foreign_key "locations", "shops"
  add_foreign_key "plans", "shops"
  add_foreign_key "privilleges", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "sector_shops", "sectors"
  add_foreign_key "sector_shops", "shops"
  add_foreign_key "shops", "users"
  add_foreign_key "social_medias", "shops"
end
