class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.references :user
      t.references :location
      t.string :city
      t.string :street
      t.string :number
      t.timestamps
    end
  end
end
