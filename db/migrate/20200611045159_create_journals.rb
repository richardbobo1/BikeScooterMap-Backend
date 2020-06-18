class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.date :date
      t.integer :user_id
      t.integer :trip_id, default: ""
      t.integer :duration
      t.integer :distance
      t.string :difficulty
      t.integer :calories
      t.string :notes, default: ""
      t.integer :dollarssaved, default: 0
      t.boolean :replacedcommute, default: false 
      t.string :transportmode, default: ""

      t.timestamps
    end
  end
end
