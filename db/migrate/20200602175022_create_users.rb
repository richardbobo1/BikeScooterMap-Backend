class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email 
      t.string :password_digest
      t.string :img_url, default: "https://fomantic-ui.com/images/avatar2/large/elyse.png"
      t.string :about_me, default: "This is a paragarph about me."

      t.timestamps
    end
  end
end
