class RenameSaveColumn < ActiveRecord::Migration
  def change
  	rename_column :pitcher_game_stats, :save, :sv
  end
end
