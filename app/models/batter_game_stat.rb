class BatterGameStat < ActiveRecord::Base
  attr_accessible :ab, :bb, :cs, :double, :game_id, :hb, :hits, :hr, :ibb, :order_in_lineup, :player_id, :position, :rbi, :runs, :sb, :so, :triple
  belongs_to :player
	belongs_to :game
end
