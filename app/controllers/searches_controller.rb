class SearchesController < ApplicationController

  def index
    if  @location = Location.find_by(name: params[:query].downcase)
      redirect_to @location
    end
    @results = Location.where("name ILIKE ?", "%#{params[:query]}%")
  end
end
