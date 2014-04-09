class BatterGameStatsController < ApplicationController

	def index
		@batter_game_stats = BatterGameStat.all
	end

	def show
		@batter_game_stat = BatterGameStat.find(params[:id])
	end

	def new
		@batter_game_stat = BatterGameStat.new
		@batter_num = params[:batter_num]

		respond_to do |format|
      format.html
      format.js 
    end
	end

	def create
		@batter_game_stat = BatterGameStat.create(params[:batter_game_stat])

		respond_to do |format|
      format.html
      format.js 
    end
	end

	def edit
		@batter_game_stat = BatterGameStat.find(params[:id])
	end

	def update
		@batter_game_stat = BatterGameStat.find(params[:id])
		@batter_game_stat.update_attributes(params[:batter_game_stat])
	end

	def destroy
		@batter_game_stat = BatterGameStat.find(params[:id])
	end


end