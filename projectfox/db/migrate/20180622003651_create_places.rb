class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.references :city
      t.string :title
      t.string :address
      t.string :phone_number
      t.integer :type
      t.string :latitude
      t.string :longitude
      t.string :latitude_range
      t.string :longitude_range
      t.integer :points
      t.string :slug

      t.timestamps
    end
  end
end
