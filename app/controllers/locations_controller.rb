class LocationsController < ApplicationController
  def create
    @location = Location.new(location_params)
<<<<<<< HEAD
=======
    @location.name = @location.name.downcase
    @location.state = @location.state.downcase
>>>>>>> location search returns city show page if exact match, returns search results otherwise
    if @location.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:name, :state)
  end
end
