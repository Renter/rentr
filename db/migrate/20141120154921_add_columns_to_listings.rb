class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :full_address, :string
  end
end
