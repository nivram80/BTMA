class Player < ActiveRecord::Base
  attr_accessible :bats, :dob, :email, :fname, :lname, :password_digest, :phone, :team_id, :throws
  belongs_to :team
	has_many :positions
	has_many :batter_game_stats
	has_many :pitcher_game_stats
	has_many :parents
end
