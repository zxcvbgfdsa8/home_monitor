class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.float :inside_temperature
      t.float :outside_temperature

      t.timestamps
    end
  end
end
