class Position < ActiveRecord::Base
  attr_accessible :position
  has_many :batter_game_stats
end
