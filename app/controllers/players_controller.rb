class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    @team = Team.find(params[:player][:team_id])
    
    if @player.save
      session[:player_id] = @player_id
      redirect_to ("/teams/#{params[:player][:team_id]}")
    else
      render "new"
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(params[:player])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end
end
