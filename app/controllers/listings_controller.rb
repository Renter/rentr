class ListingsController < ApplicationController
  def index
    @listings = Listing.order(:created_at).reverse_order
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
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

  def listing_params
    params.require(:listing).permit(
      :description,
      :name,
      :user_id,
      :main_image,
      :city,
      :street,
      :number
    )
  end
end
