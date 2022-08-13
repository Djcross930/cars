class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :location
      t.integer :winner_car_id

      t.timestamps
    end
  end
end
