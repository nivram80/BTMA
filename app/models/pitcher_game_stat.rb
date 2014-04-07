class PitcherGameStat < ActiveRecord::Base
  attr_accessible :bb, :cg, :er, :game_id, :hb, :hits, :hr, :ibb, :ip, :loss, :player_id, :runs, :save, :sho, :so, :start, :win
  belongs_to :player
	belongs_to :game
end
