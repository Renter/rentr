class AddLocationIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :location_id, :string
  end
end
