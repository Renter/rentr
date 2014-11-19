class Map
  attr_accessor :lat, :long
  attr_reader :location

  def initialize(location)
    @location = location
  end

  delegate :latitude, to: :@location
  delegate :longitude, to: :@location
end
<<<<<<< HEAD

=======
>>>>>>> aa0aa4029777b4a9952f80d9ba7b10df4d4f8ad8
