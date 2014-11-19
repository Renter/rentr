class AddFullAddressAndCoordsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :full_street_address, :string
    add_column :listings, :latitude, :float
    add_column :listings, :longitude, :float
  end
end
