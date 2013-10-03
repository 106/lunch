class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :city
      t.string :street
      t.string :building
      t.integer :zip

      t.timestamps
    end
  end
end
