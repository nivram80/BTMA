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

ActiveRecord::Schema.define(:version => 20140409224025) do

  create_table "batter_game_stats", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "order_in_lineup"
    t.integer  "ab"
    t.integer  "hits"
    t.integer  "runs"
    t.integer  "double"
    t.integer  "triple"
    t.integer  "hr"
    t.integer  "rbi"
    t.integer  "hb"
    t.integer  "bb"
    t.integer  "ibb"
    t.integer  "so"
    t.integer  "sb"
    t.integer  "cs"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "position_id"
  end

  create_table "coaches", :force => true do |t|
    t.integer  "team_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.boolean  "manager"
    t.boolean  "first_base"
    t.boolean  "third_base"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "games", :force => true do |t|
    t.boolean  "home_team"
    t.string   "ballpark"
    t.string   "city"
    t.datetime "game_datetime"
    t.integer  "fahr_temp"
    t.integer  "weather_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "opp_nickname"
    t.string   "opp_city"
  end

  create_table "parents", :force => true do |t|
    t.integer  "player_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.string   "relation"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pitcher_game_stats", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "start"
    t.integer  "win"
    t.integer  "loss"
    t.integer  "sv"
    t.integer  "cg"
    t.integer  "sho"
    t.decimal  "ip"
    t.integer  "hits"
    t.integer  "runs"
    t.integer  "er"
    t.integer  "hr"
    t.integer  "hb"
    t.integer  "bb"
    t.integer  "ibb"
    t.integer  "so"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pitcher_num"
  end

  create_table "players", :force => true do |t|
    t.integer  "team_id"
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.string   "throws"
    t.string   "bats"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "positions", :force => true do |t|
    t.string   "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "nickname"
    t.string   "city"
    t.string   "logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "state"
  end

  create_table "weathers", :force => true do |t|
    t.string   "conditions"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
