class PitcherGameStatsController < ApplicationController

	def index
		@pitcher_game_stats = PitcherGameStat.all
	end

	def show
		@pitcher_game_stat = PitcherGameStat.find(params[:id])
	end

	def new
		@pitcher_game_stat = PitcherGameStat.new

		respond_to do |format|
      format.html
      format.js 
    end
	end

	def create
		@pitcher_game_stat = PitcherGameStat.create(params[:pitcher_game_stat])

		respond_to do |format|
      format.html
      format.js 
    end
	end

	def edit
		@pitcher_game_stat = PitcherGameStat.find(params[:id])
	end

	def update
		@pitcher_game_stat = PitcherGameStat.find(params[:id])
		@pitcher_game_stat.update_attributes(params[:pitcher_game_stat])
	end

	def destroy
		@pitcher_game_stat = PitcherGameStat.find(params[:id])
	end
end