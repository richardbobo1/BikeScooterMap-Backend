class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.decimal :start_price
      t.decimal :price_per_minute
      t.string :link_to_app
      t.string :link_to_website
      t.string :fetch_url

      t.timestamps
    end
  end
end
