class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :created_by, default: 1
      t.integer :length
      t.string :difficulty, default: 'Easy'
      t.string :surface
      t.string :short_description 
      t.string :lat, default: "38.9072"
      t.string :lng, default: "-77.0369"
      t.string :description, default: "Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. "
      t.string :tips, default: "share some tips"
      t.string :google_map, default: "https://www.evelo.com/wp-content/uploads/2019/05/050119-google-hero-1024x450.jpg"
      t.string :source, default: "www.google.com"
      t.string :image_url, default: "https://blog.mapmyrun.com/wp-content/uploads/2018/12/11-Must-Read-Cycling-Stories-of-2018-4.jpg"

      t.timestamps
    end
  end
end

