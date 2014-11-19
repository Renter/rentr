class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    
    if find_location(@listing.city)
      @listing.location_id = find_location(@listing.city).id
    end
    if @listing.save
      redirect_to @listing
    else
      redirect_to :back
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

  def find_location(city_name)
    Location.find_by(name: city_name.downcase) 
  end
  
  def listing_params
    params.require(:listing).permit(
      :description,
      :name,
      :user_id,
      :city,
      :street,
      :number
    )
  end
end
