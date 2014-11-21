class SearchesController < ApplicationController
  def index
    @results = Location.where("name ILIKE ?", "%#{params[:query]}%")
    if one_exact_result
      redirect_to @location
    end
  end

  private

  def one_exact_result
    (@location = Location.find_by(name: params[:query].downcase)) && !@results.many?
  end

end
