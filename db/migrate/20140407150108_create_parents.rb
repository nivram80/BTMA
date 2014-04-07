class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :player_id
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :password_digest
      t.string :relation

      t.timestamps
    end
  end
end
