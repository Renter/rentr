class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|

      t.string :name, null: false
      t.string :desription, null: false
      t.references :user
      t.string :image_url
      t.timestamps
    end
  end
end
