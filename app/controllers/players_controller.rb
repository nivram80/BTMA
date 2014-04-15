class PlayersController < ApplicationController

  def index
    @players = Player.order(:lname)
    @batter_stats = BatterGameStat.select("
                      SUM(ab) AS sum_ab, 
                      SUM(hits) AS sum_hits, 
                      SUM(runs) AS sum_runs, 
                      SUM(double) AS sum_double, 
                      SUM(triple) AS sum_triple, 
                      SUM(hr) AS sum_hr, 
                      SUM(rbi) AS sum_rbi, 
                      SUM(sb) AS sum_sb, 
                      SUM(cs) AS sum_cs, 
                      SUM(bb) AS sum_bb, 
                      SUM(ibb) AS sum_ibb, 
                      SUM(hb) AS sum_hb, 
                      player_id, 
                      players.fname AS fname,
                      players.lname AS lname").group("batter_game_stats.player_id, fname, lname").joins(:player).order(:lname)
    @pitcher_stats = PitcherGameStat.select("
                      SUM(start) AS sum_start, 
                      SUM(win) AS sum_win, 
                      SUM(loss) AS sum_loss, 
                      SUM(sv) AS sum_sv, 
                      SUM(cg) AS sum_cg, 
                      SUM(sho) AS sum_sho, 
                      SUM(ip) AS sum_ip, 
                      SUM(hits) AS sum_hits, 
                      SUM(runs) AS sum_runs, 
                      SUM(er) AS sum_er, 
                      SUM(hr) AS sum_hr, 
                      SUM(hb) AS sum_hb, 
                      SUM(bb) AS sum_bb, 
                      SUM(ibb) AS sum_ibb, 
                      SUM(so) AS sum_so, 
                      player_id, 
                      players.fname AS fname,
                      players.lname AS lname").group("pitcher_game_stats.player_id, fname, lname").joins(:player).order(:lname)
  end

  def show
    @player = Player.find(params[:id])
    @batter_stats = BatterGameStat.where(:player_id => params[:id])
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

    redirect_to ("/teams/#{params[:player][:team_id]}")
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end
end
