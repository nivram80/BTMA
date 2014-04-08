class RenamePositionToPositionId < ActiveRecord::Migration
  def change
  	rename_column :batter_game_stats, :position, :position_id
  end
end
