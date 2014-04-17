class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @coaches = Coach.where(team_id: params[:id])

    @position_players = BatterGameStat.select("
      SUM(ab) AS sum_ab,
      SUM(hits) AS sum_hits, 
      SUM(hr) AS sum_hr, 
      SUM(rbi) AS sum_rbi, 
      SUM(sb) AS sum_sb, 
      player_id, 
      players.fname AS fname,
      players.lname AS lname, 
      players.bats AS bats, 
      players.throws AS throws,
      players.team_id AS team_id")
      .group("batter_game_stats.player_id, fname, lname, bats, throws, team_id")
      .joins(:player, :position)
      .order(:lname)
      .where("players.team_id = ?", session[:team_id])

    @pitchers = PitcherGameStat.select("
      SUM(ip) AS sum_ip, 
      SUM(er) AS sum_er, 
      SUM(bb) AS sum_bb, 
      SUM(hits) AS sum_hits, 
      SUM(so) AS sum_so, 
      SUM(win) AS sum_win, 
      SUM(loss) AS sum_loss, 
      SUM(sv) AS sum_sv, 
      player_id, 
      players.fname AS fname, 
      players.lname AS lname, 
      players.throws AS throws,
      players.team_id AS team_id")
      .group("pitcher_game_stats.player_id, fname, lname, throws, team_id")
      .joins(:player)
      .order(:lname)
      .where("players.team_id = ?", session[:team_id])
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
