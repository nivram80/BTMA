class Player < ActiveRecord::Base
  attr_accessible :bats, :dob, :email, :fname, :lname, :phone, :team_id, :throws, :password, :password_confirmation

  has_secure_password
  belongs_to :team
	has_many :positions
	has_many :batter_game_stats
	has_many :pitcher_game_stats
	has_many :parents
	
	validates :email, :uniqueness => true
end
