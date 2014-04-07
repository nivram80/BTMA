class CreateBatterGameStats < ActiveRecord::Migration
  def change
    create_table :batter_game_stats do |t|
      t.integer :game_id
      t.integer :player_id
      t.string :position
      t.integer :order_in_lineup
      t.integer :ab
      t.integer :hits
      t.integer :runs
      t.integer :double
      t.integer :triple
      t.integer :hr
      t.integer :rbi
      t.integer :hb
      t.integer :bb
      t.integer :ibb
      t.integer :so
      t.integer :sb
      t.integer :cs

      t.timestamps
    end
  end
end
