class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @coach = Coach.new
    @coaches = Coach.where(team_id: params[:id])
    @player = Player.new
    @new_players = Player.all(:conditions => ["id NOT IN (?) and id NOT IN (?)", BatterGameStat.all.map(&:player_id), PitcherGameStat.all.map(&:player_id)])
    
    @pitchers = PitcherGameStat
      .select("player_id, players.fname || ' ' || players.lname AS name, players.throws AS throws, start")
      .group("player_id, fname, lname, throws, start")
      .joins(:player)
      .order(:lname)

    @position_players = BatterGameStat
      .select("player_id, players.fname || ' ' || players.lname AS name, players.bats AS bats, players.throws AS throws, array_agg(distinct positions.position) AS pos")
      .group("player_id, fname, lname, throws, bats")
      .joins(:player, :position)
      .order(:lname)

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
