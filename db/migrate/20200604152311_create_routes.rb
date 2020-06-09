class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :length
      t.string :difficulty
      t.string :surface
      t.string :short_description 
      t.string :description
      t.string :tips
      t.string :google_map
      t.string :source 

      t.timestamps
    end
  end
end
