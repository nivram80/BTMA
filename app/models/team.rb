class Team < ActiveRecord::Base
  attr_accessible :city, :state, :logo, :nickname
  has_many :players
	has_many :coaches
	has_many :games
end
