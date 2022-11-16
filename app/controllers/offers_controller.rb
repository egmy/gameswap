class OffersController < ApplicationController

  def new
    @listing = Listing.find(params[:listing_id])
    @offer = Offer.new
    render :new
  end
end
