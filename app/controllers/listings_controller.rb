class ListingsController < ApplicationController
  def index
  @listing = Listing.new
  @listings= Listing.all
  end

  def create
  puts "ASDADASDASDASDSAD"
  @listing= Listing.new (listing_params)
  @listing.save
  redirect_to :back
  end

  private
  def listing_params
    params.require(:listing).permit(:name, :description, :location, :image_url)
  end

end
