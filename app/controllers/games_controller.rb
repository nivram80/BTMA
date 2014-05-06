class GamesController < ApplicationController

	def index
		@games = Game.order("game_datetime").where(:team_id => session[:team_id])
	end

	def show
		@game = Game.find(params[:id])
		@batter_stats = BatterGameStat.where(:game_id => params[:id]).order(:order_in_lineup)
		@pitcher_stats = PitcherGameStat.where(:game_id => params[:id]).order(:pitcher_num)
		@pitcher_game_stat = PitcherGameStat.new
		@batter_game_stat = BatterGameStat.new
		@players = Player.where("team_id = ?", @game.team_id)
		@positions = Position.all
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