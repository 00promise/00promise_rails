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

ActiveRecord::Schema.define(:version => 20130908052659) do

  create_table "candidates", :force => true do |t|
    t.integer  "position_id"
    t.integer  "politician_id"
    t.integer  "number"
    t.boolean  "elected"
    t.boolean  "current"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "elections", :force => true do |t|
    t.string   "name"
    t.date     "held_on"
    t.date     "term_started_on"
    t.date     "term_ended_on"
    t.string   "note"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "manifestos", :force => true do |t|
    t.integer  "candidate_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.integer  "chairman_id"
    t.integer  "assembly_leader_id"
    t.date     "founded_on"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "politicians", :force => true do |t|
    t.string   "name"
    t.string   "birthday_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "type_code"
    t.string   "district"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
