class PitcherGameStat < ActiveRecord::Base
  attr_accessible :bb, :cg, :er, :game_id, :hb, :hits, :hr, :ibb, :ip, :loss, :player_id, :runs, :sv, :sho, :so, :start, :win, :pitcher_num
  belongs_to :player
	belongs_to :game
end
