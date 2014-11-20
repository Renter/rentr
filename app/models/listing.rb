class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :date_ranges

  has_attached_file :main_image, styles:
    { medium: "300x300>",
      thumb: "100x100>" 
    },
    default_url: "/images/:style/missing.png"
  
  has_many :date_ranges   
  geocoded_by :full_street_address
  after_validation :geocode

  def location_names
    Location.all.map{|location| location.name}
  end
end


