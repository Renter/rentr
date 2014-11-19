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

  def location_names
    Location.all.map { |location| location.name }
  end
end
