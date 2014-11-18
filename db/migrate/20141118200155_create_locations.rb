class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.string :name
      t.string :description
      t.string :image_url
      t.timestamps
    end
  end
end
