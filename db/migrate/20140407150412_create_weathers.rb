class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :conditions

      t.timestamps
    end
  end
end
