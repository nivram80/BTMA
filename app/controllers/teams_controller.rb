class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @coaches = Coach.where(team_id: params[:id])
    @player = Player.new

    @position_players = BatterGameStat.select("player_id, players.fname AS fname, players.lname AS lname, players.bats AS bats, players.throws AS throws, position_id, positions.position AS position").group("batter_game_stats.player_id, batter_game_stats.position_id, fname, lname, bats, throws, position").joins(:player, :position).order(:lname)

    # @position_players = Player.where("team_id = ?", 1).joins(:batter_game_stats => :position).pluck("positions.position AS pos").uniq.join(", ")

    # @position_players = Player.select("id, fname, lname, bats, throws, team_id")
    #   .group("id")
    #   .order(:lname)
    #   .where("team_id = ?", session[:team_id])

  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(params[:team])
    @coach = Coach.create(params[:coach])
    @coach.update_attributes({:team_id => @team.id})

    session[:coach_id] = @coach.id
    session[:team_id] = @team.id
    
    
    redirect_to ("/teams/#{@team.id}")
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])

    redirect_to ("/teams/#{params[:id]}")
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end
end
