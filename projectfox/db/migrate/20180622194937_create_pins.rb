class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.references :user
      t.references :place
      t.string :latitude
      t.string :longitude
      t.integer :points

      t.timestamps
    end
  end
end
