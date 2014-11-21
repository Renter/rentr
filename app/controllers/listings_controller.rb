class ListingsController < ApplicationController
  def index
<<<<<<< HEAD
    @listings = Listing.order(:created_at).reverse_order
=======
    @listings = Listing.all
    @listing = Listing.new
>>>>>>> 303b57dff4aa14862615d033c49faeda25c9ab51
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    @listing.assign_location_id
    
    if @listing.save
      redirect_to @listing
    else
      redirect_to :back
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to "/listings"
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
<<<<<<< HEAD
      :main_image,
      :city,
      :street,
      :number,
      :location_id
=======
      :location
>>>>>>> 303b57dff4aa14862615d033c49faeda25c9ab51
    )
  end
end
