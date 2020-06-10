class CreateFavoriteRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_routes do |t|
      t.integer :user_id
      t.integer :route_id
      t.boolean :favorite, default: true 

      t.timestamps
    end
  end
end
