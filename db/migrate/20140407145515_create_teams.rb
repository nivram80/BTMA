class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nickname
      t.string :city
      t.string :logo

      t.timestamps
    end
  end
end
