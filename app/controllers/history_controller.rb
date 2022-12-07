class HistoryController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission

    def require_permission
      @owner = User.find(params[:profile_id])
      if @owner != current_user
        flash[:error] = "You do not have permission to do that"
        redirect_to profile_path(@owner.id)
      end
    end

    def index
        @owner = User.find(params[:profile_id])
        @offers = @owner.offers.or(Offer.where(listing: Listing.where(user: @owner.id)))
        render :index
    end
end
