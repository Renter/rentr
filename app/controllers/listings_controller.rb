class ListingsController < ApplicationController
  def index
    @listing = Listing.new
  end

  def create
    @listing = Listing.new (listing_params)
    @listing.save
    redirect_to :back
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :location, :image_url)
  end
end
