class DateRangesController < ApplicationController
  def new
    @date_range = DateRange.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @date_range = @listing.date_ranges.new(date_range_params)
    @date_range.save
    redirect_to @listing
  end

  private

  def date_range_params
    params.require(:date_range).permit(:start_date, :end_date)
  end
end
