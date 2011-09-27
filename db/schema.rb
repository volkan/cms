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

ActiveRecord::Schema.define(:version => 20110927190821) do

  create_table "content_categories", :force => true do |t|
    t.string   "title"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_translations", :force => true do |t|
    t.integer  "language_id"
    t.integer  "content_id"
    t.string   "field_name"
    t.text     "content"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", :force => true do |t|
    t.integer  "site_id"
    t.integer  "parent_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status"
  end

  create_table "languages", :force => true do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.integer  "parent_id"
    t.string   "title"
    t.string   "url"
    t.string   "folder_name"
    t.string   "host_name"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
