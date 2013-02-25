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

ActiveRecord::Schema.define(:version => 20130225193924) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "webpage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "participants", :force => true do |t|
    t.integer  "poet_id"
    t.integer  "slam_id"
    t.text     "howHeard"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "poets", :force => true do |t|
    t.string   "poetName"
    t.integer  "phoneNumber"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rounds", :force => true do |t|
    t.integer  "slam_id"
    t.integer  "numPoets"
    t.integer  "roundNumber"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "rounds", ["slam_id"], :name => "index_rounds_on_slam_id"

  create_table "scores", :force => true do |t|
    t.integer  "round_id"
    t.integer  "poet_id"
    t.decimal  "score1"
    t.decimal  "score2"
    t.decimal  "score3"
    t.decimal  "score4"
    t.decimal  "score5"
    t.decimal  "time"
    t.boolean  "time_deduction"
    t.boolean  "disqualified"
    t.decimal  "finalScore"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "slams", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "location"
    t.string   "date"
    t.string   "hostFirstName"
    t.string   "hostLastName"
    t.integer  "numWinners"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "slams", ["user_id"], :name => "index_slams_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "userName"
    t.string   "location"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
