class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :image_url
      t.boolean :is_main
      t.references :listing
      t.timestamps
    end
  end
end
