class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :route_id
      t.integer :rating
      t.string :comments

      t.timestamps
    end
  end
end
