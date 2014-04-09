# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BatterGameStat.create({:game_id => 4, :player_id => 11, :order_in_lineup => 1, :ab => 4, :hits => 3, :runs => 3, :double => 0, :triple => 0, :hr => 0, :rbi => 1, :sb => 3, :position_id => 9})