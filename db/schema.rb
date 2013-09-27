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

ActiveRecord::Schema.define(:version => 20130927053713) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "elections", :force => true do |t|
    t.string   "name",                         :null => false
    t.date     "held_on",                      :null => false
    t.boolean  "enabled",    :default => true
    t.integer  "ord",        :default => 999
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "manifestos", :force => true do |t|
    t.integer  "politician_id"
    t.string   "title"
    t.text     "description"
    t.integer  "reply_cnt",     :default => 0
    t.integer  "good_cnt",      :default => 0
    t.integer  "fair_cnt",      :default => 0
    t.integer  "poor_cnt",      :default => 0
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.string   "chairman_name"
    t.string   "assembly_leader_name"
    t.date     "founded_on"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "img_file_name"
    t.string   "content_type"
    t.integer  "file_size"
  end

  create_table "politicians", :force => true do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "party_id",         :default => 0
    t.string   "profile_img"
    t.string   "bg_img"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.string   "bg_img_file_name"
    t.string   "bg_content_type"
    t.integer  "bg_file_size"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.string   "type_name"
    t.integer  "type_code"
    t.string   "district"
    t.integer  "politician_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "manifesto_id"
    t.integer  "user_id"
    t.integer  "grade"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "replies", :force => true do |t|
    t.integer  "manifesto_id"
    t.integer  "user_id"
    t.string   "status",       :limit => 10, :default => "normal"
    t.text     "content"
    t.integer  "agree_cnt",                  :default => 0
    t.integer  "disagree_cnt",               :default => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "reply_evaluations", :force => true do |t|
    t.integer  "reply_id"
    t.integer  "user_id"
    t.string   "eval_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "authentication_token"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
