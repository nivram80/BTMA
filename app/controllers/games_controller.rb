class GamesController < ApplicationController

	def index
		@game = Game.select("created_at DESC")
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.create(params[:game])
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