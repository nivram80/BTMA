class Team < ActiveRecord::Base
  attr_accessible :city, :logo, :nickname
  has_many :players
	has_many :coaches
	has_many :games
end
