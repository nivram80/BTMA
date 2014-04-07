class Weather < ActiveRecord::Base
  attr_accessible :conditions
  has_many :games
end
