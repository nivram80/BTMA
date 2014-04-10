class GamesController < ApplicationController

	def index
		@games = Game.order("game_datetime")
	end

	def show
		@game = Game.find(params[:id])
		@batter_stats = BatterGameStat.where(:game_id => params[:id]).order(:order_in_lineup)
		# @lineup = [ 0, 1, 2, 3, 4, 5, 6, 7, 8 ]
		# @batter_stats.each do |batter|
		# 	@lineup[batter.order_in_lineup - 1] = batter
		# end
		@pitcher_stats = PitcherGameStat.where(:game_id => params[:id]).order(:pitcher_num)
	end

	def new
		@game = Game.new
		@weathers = Weather.all
	end

	def create
		@game = Game.create(params[:game])
		redirect_to ("/games/#{@game.id}")
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
		@game.update_attributes(params[:game])
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
	end

end