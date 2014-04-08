class BatterGameStatsController < ApplicationController

	def index
		@batter_game_stats = Batter_game_stat.all
	end

	def show
		@batter_game_stat = Batter_game_stat.find(params[:id])
	end

	def new
		@batter_game_stat = Batter_game_stat.new
	end

	def create
		@batter_game_stat = Batter_game_stat.create(params[:batter_game_stat])
	end

	def edit
		@batter_game_stat = Batter_game_stat.find(params[:id])
	end

	def update
		@batter_game_stat = Batter_game_stat.find(params[:id])
		@batter_game_stat.update_attributes(params[:batter_game_stat])
	end

	def destroy
		@batter_game_stat = Batter_game_stat.find(params[:id])
	end


end