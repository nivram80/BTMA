ActiveRecord::Schema.define(:version => 20140407152109) do

  create_table "batter_game_stats", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.string   "position"
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
    t.integer  "save"
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
  end

  create_table "weathers", :force => true do |t|
    t.string   "conditions"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
