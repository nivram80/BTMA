class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :email
      t.string :phone
      t.string :password_digest
      t.string :throws
      t.string :bats

      t.timestamps
    end
  end
end
