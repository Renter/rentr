class Map
  attr_accessor :lat, :long
  attr_reader :location

  def initialize(location)
    @location = location
    @lat = location.latitude
    @long = location.longitude
  end 
end
