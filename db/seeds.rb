# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Position.create({:position => "1B"})
Position.create({:position => "2B"})
Position.create({:position => "3B"})
Position.create({:position => "SS"})
Position.create({:position => "C"})
Position.create({:position => "RF"})
Position.create({:position => "CF"})
Position.create({:position => "LF"})
Position.create({:position => "DH"})
Position.create({:position => "SP"})
Position.create({:position => "RP"})

Weather.create({:conditions => "Fair"})
Weather.create({:conditions => "Windy"})
Weather.create({:conditions => "Rain"})
Weather.create({:conditions => "Snow"})
Weather.create({:conditions => "Cold"})
Weather.create({:conditions => "Hot"})