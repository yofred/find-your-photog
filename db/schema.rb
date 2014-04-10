# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140410002114) do

  create_table "comments", :force => true do |t|
    t.integer  "photo_id"
    t.integer  "user_id"
    t.integer  "photographer_id"
    t.text     "message"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "galleries", :force => true do |t|
    t.integer  "photo_id"
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "photographer_id"
  end

  create_table "photographers", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "company_name"
    t.string   "website"
    t.integer  "comment_id"
    t.text     "bio"
    t.integer  "gallery_id"
    t.integer  "style_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "photo_id"
  end

  create_table "photos", :force => true do |t|
    t.integer  "gallery_id"
    t.integer  "comment_id"
    t.integer  "style_id"
    t.integer  "photographer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "photo"
  end

  create_table "preferences", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "traditional"
    t.boolean  "contemporary"
    t.boolean  "documentary"
    t.boolean  "artistic"
    t.boolean  "conceptual"
    t.boolean  "glamorous"
    t.boolean  "retro"
    t.boolean  "fine_art"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "styles", :force => true do |t|
    t.integer  "photo_id"
    t.integer  "user_id"
    t.integer  "photographer_id"
    t.boolean  "traditional"
    t.boolean  "contemporary"
    t.boolean  "documentary"
    t.boolean  "artistic"
    t.boolean  "conceptual"
    t.boolean  "glamorous"
    t.boolean  "retro"
    t.boolean  "fine_art"
    t.boolean  "like"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "gallery_id"
    t.integer  "comment_id"
    t.integer  "style_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "handle"
    t.text     "bio"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
