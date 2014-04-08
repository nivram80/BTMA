class AddOppNicknameToGame < ActiveRecord::Migration
  def change
    add_column :games, :opp_nickname, :string
  end
end
