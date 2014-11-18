class Presenter
  def new_location
    Location.new
  end

  def locations
    Location.all
  end
end
