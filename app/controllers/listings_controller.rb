class ListingsController < ApplicationController

  def index
    @listings=Listing.all
  end

  def new
    @listing=Listing.new
  end

  def create
    @listing=Listing.new(listing_params)
    
    if @listing.save
      redirect_to @listing
    else
      redirect_to :back
    end
  end

  def show
    @listing=Listing.find(params[:id])
    @user= User.find(@listing.user_id)
    if current_user==@user
      render :owner_show
    else
      render :renter_show
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :image_url, :id, :user_id)
  end
end
