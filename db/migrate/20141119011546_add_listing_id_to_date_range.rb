class AddListingIdToDateRange < ActiveRecord::Migration
  def change
    add_reference :date_ranges, :listing, index: true
  end
end
