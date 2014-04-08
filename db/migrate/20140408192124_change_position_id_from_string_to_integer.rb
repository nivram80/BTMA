class ChangePositionIdFromStringToInteger < ActiveRecord::Migration
  def up
  	remove_column :batter_game_stats, :position_id
  	add_column :batter_game_stats, :position_id, :integer
  end
  def down
  	add_column :batter_game_stats, :position_id, :string
  	remove_column :batter_game_stats, :position_id
  end
end
