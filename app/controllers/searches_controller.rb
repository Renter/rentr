class SearchesController < ApplicationController
  def index
    @results = Location.where("name ILIKE ?", "%#{params[:query]}%")
  end
end
