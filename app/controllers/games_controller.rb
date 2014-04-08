class GamesController < ApplicationController

	def index
		@game = Game.select("created_at DESC")
	end

	def show
		@game = Game.find(params[:id])
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