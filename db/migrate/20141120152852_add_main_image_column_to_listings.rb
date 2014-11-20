class AddMainImageColumnToListings < ActiveRecord::Migration
  def self.up
    add_attachment :listings, :main_image
  end

  def self.down
    remove_attachment :listings, :main_image
  end
end
