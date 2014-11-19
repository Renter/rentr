class SearchesController < ApplicationController
<<<<<<< HEAD
  def index
    @results = Location.where("name ILIKE ?", "%#{params[:query]}%")
=======
  
  def index
    if  @location = Location.find_by(name: params[:query].downcase)
      redirect_to @location
    end
      @results = Location.where("name ILIKE ?", "%#{params[:query]}%")
    
>>>>>>> location search returns city show page if exact match, returns search results otherwise
  end
end
