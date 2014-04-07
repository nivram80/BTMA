class CreatePitcherGameStats < ActiveRecord::Migration
  def change
    create_table :pitcher_game_stats do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :start
      t.integer :win
      t.integer :loss
      t.integer :save
      t.integer :cg
      t.integer :sho
      t.decimal :ip
      t.integer :hits
      t.integer :runs
      t.integer :er
      t.integer :hr
      t.integer :hb
      t.integer :bb
      t.integer :ibb
      t.integer :so

      t.timestamps
    end
  end
end
