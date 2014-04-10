class AddPitcherNumToPitcherGameStat < ActiveRecord::Migration
  def change
    add_column :pitcher_game_stats, :pitcher_num, :integer
  end
end
