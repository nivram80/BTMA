class PositionsController < ApplicationController

	def index

	end

	def new
		@position = Position.new
	end

	def create
		@position = Position.create({:position => params[:position]})

		redirect_to :new_position
	end
end