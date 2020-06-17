class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email 
      t.string :first_name, default: "FirstName"
      t.string :last_name , default: "LastName"
      t.string :password_digest
      t.string :current_city, default: "Washington, DC"
      t.boolean :admin, default: false 
      t.string :img_url, default: "https://fomantic-ui.com/images/avatar2/large/elyse.png"
      t.string :about_me, default: "This is a paragarph about me."

      t.timestamps
    end
  end
end
