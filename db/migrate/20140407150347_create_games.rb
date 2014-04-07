class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :home_team
      t.string :ballpark
      t.string :city
      t.datetime :game_datetime
      t.integer :fahr_temp
      t.integer :weather_id

      t.timestamps
    end
  end
end
