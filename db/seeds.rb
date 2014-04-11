# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BatterGameStat.create({:game_id => 1, :player_id => 3, :position_id => 3, :order_in_lineup => 3, :ab => 5, :hits => 4, :runs => 3, :double => 2, :triple => 0, :hr => 0, :rbi => 3, :hb => 0, :bb => 0, :ibb => 0, :so => 3, :sb => 0, :cs => 0})
BatterGameStat.create({:game_id => 1, :player_id => 4, :position_id => 4, :order_in_lineup => 4, :ab => 4, :hits => 0, :runs => 0, :double => 0, :triple => 0, :hr => 0, :rbi => 0, :hb => 0, :bb => 1, :ibb => 0, :so => 2, :sb => 0, :cs => 0})
BatterGameStat.create({:game_id => 1, :player_id => 5, :position_id => 5, :order_in_lineup => 5, :ab => 4, :hits => 1, :runs => 1, :double => 0, :triple => 1, :hr => 0, :rbi => 1, :hb => 0, :bb => 0, :ibb => 0, :so => 3, :sb => 0, :cs => 0})
BatterGameStat.create({:game_id => 1, :player_id => 6, :position_id => 6, :order_in_lineup => 6, :ab => 3, :hits => 1, :runs => 2, :double => 1, :triple => 0, :hr => 0, :rbi => 1, :hb => 0, :bb => 1, :ibb => 0, :so => 1, :sb => 0, :cs => 0})
BatterGameStat.create({:game_id => 1, :player_id => 7, :position_id => 7, :order_in_lineup => 7, :ab => 4, :hits => 1, :runs => 0, :double => 0, :triple => 0, :hr => 0, :rbi => 0, :hb => 0, :bb => 0, :ibb => 0, :so => 2, :sb => 1, :cs => 0})
BatterGameStat.create({:game_id => 1, :player_id => 8, :position_id => 8, :order_in_lineup => 8, :ab => 4, :hits => 3, :runs => 3, :double => 1, :triple => 0, :hr => 0, :rbi => 2, :hb => 0, :bb => 0, :ibb => 0, :so => 0, :sb => 2, :cs => 0})
