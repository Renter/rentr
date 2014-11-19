class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :date_ranges
  
  def location_names
    Location.all.map{|location| location.name}
  end
end
