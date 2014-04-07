class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new

    respond_to do |format|
      format.html
      format.js 
    end 
  end

  def create
    @player = Player.create(params[:player])
    binding.pry
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player = Player.update_attributes(params[:player])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end
end
