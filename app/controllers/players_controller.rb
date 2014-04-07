class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:player])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(params[:player])
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
