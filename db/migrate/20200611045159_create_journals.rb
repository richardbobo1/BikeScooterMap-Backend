class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.date :date
      t.integer :user_id 
      t.integer :duration
      t.integer :distance
      t.string :difficulty
      t.integer :calories
      t.string :notes

      t.timestamps
    end
  end
end
