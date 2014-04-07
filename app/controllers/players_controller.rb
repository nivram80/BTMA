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
    @player = Player.new(params[:player])
    
    if @player.save
      session[:player_id] = @player_id
      redirect_to :root
     else
      render “new”
     end

if @user.save # password is converted to digest
          session[:user_id] = @user_id # Automatically signs in user when they sign up
          redirect_to :root
     else
          render “new”
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
