class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :trip_name
      t.date :trip_start
      t.date :trip_end
      t.string :notes

      t.timestamps
    end
  end
end
