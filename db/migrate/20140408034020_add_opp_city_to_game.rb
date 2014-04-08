class AddOppCityToGame < ActiveRecord::Migration
  def change
    add_column :games, :opp_city, :string
  end
end
