class AddTeamIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :team_id, :integer
  end
end
