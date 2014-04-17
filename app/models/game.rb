class Game < ActiveRecord::Base
  attr_accessible :ballpark, :city, :fahr_temp, :game_datetime, :home_team, :weather_id, :opp_nickname, :opp_city, :team_id
  belongs_to :weather
end
