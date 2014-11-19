class AddLatAndLongToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :longitude, :integer
    add_column :locations, :latitude, :integer
  end
end
