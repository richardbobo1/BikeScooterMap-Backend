class CreateCompleteRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :complete_routes do |t|
      t.integer :route_id
      t.integer :user_id
      t.boolean :completed, default: true 

      t.timestamps
    end
  end
end
