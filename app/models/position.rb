class Position < ActiveRecord::Base
  attr_accessible :position
  has_many :players
end
