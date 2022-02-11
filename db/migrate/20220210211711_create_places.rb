class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :location
      t.text :touristQuantity
      t.text :description

      t.timestamps
    end
  end
end
