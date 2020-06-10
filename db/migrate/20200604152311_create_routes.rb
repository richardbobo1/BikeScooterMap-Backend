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
      t.string :source, default: "www.google.com"
      t.strong :image_url, default: "https://blog.mapmyrun.com/wp-content/uploads/2018/12/11-Must-Read-Cycling-Stories-of-2018-4.jpg"

      t.timestamps
    end
  end
end
