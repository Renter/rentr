class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :date_ranges

  has_attached_file :main_image, styles:
    { medium: "300x300>",
      thumb: "100x100>"
    },
    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :main_image, :content_type => /\Aimage/

  has_many :date_ranges
  geocoded_by :full_street_address
  after_validation :geocode


  def full_street_address
    "#{number} #{street}, #{city}"
  end

  def assign_location_id 
    puts "hi"
    puts self.city.inspect
    if find_location(self.city)
      puts "true"
      self.location_id = find_location(city).id
    else 
      puts "false"
      self.location_id = 0
    end
  end

  def location_names
    Location.names
  end

  private

  def find_location(city_name)
    @location = Location.find_by(name: city_name.downcase)
  end
end
