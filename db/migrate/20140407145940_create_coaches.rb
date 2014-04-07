class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :team_id
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :password_digest
      t.boolean :manager
      t.boolean :first_base
      t.boolean :third_base

      t.timestamps
    end
  end
end
