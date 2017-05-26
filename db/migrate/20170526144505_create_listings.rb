class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :city
      t.string :neighborhood
      t.float :price
      t.float :bedrooms
      t.float :bathrooms
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :shared
      t.integer :user_id

      t.timestamps

    end
  end
end
