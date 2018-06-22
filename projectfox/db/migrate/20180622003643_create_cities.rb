class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :title
      t.string :image
      t.string :state
      t.string :country
      t.string :county
      t.string :incorporated
      t.string :population
      t.string :slug

      t.timestamps
    end
  end
end
