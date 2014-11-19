class RemoveUnneededColumnsFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :full_address
    remove_column :listings, :full_street_address
  end
end
