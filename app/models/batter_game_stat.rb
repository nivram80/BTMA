class BatterGameStat < ActiveRecord::Base
  attr_accessible :ab, :bb, :cs, :double, :game_id, :hb, :hits, :hr, :ibb, :order_in_lineup, :player_id, :rbi, :runs, :sb, :so, :triple, :position_id
  belongs_to :player
	belongs_to :game
end
