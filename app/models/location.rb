class Location < ActiveRecord::Base
  geocoded_by :name_and_state
  after_validation :geocode
  has_many :listings


  def name_and_state
    "#{name}, #{state}"
  end

  def self.find_by_name(city_name)
    find_by(name: city_name.downcase)
  end

  def self.names
    all.map { |location| location.name }
  end
end
