class HistoryController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission

    def require_permission
      @owner = User.find(params[:profile_id])
      if @owner != current_user
        flash[:error] = "You do not have permission to do that"
        redirect_to profile_path(@owner)
      end
    end

    def index
        @owner = User.find(params[:profile_id])
        @offers = @owner.offers.or(Offer.where(listing: Listing.where(user: @owner.id)))
        render :index
    end

    def new_rating
      @author = User.find(params[:profile_id])
      @offer = Offer.find(params[:offer_id])
      if @offer.nil? or @offer.status != 'accepted' or !@offer.ratings.find_by(author: @author).nil?
        flash[:error] = "Invalid offer"
      elsif params[:rating].to_i.between?(1,5)
        @subject = @offer.owner == @author ? @offer.listing.user : @offer.owner
        @rating = @offer.ratings.build(author: @author, subject: @subject, rating: params[:rating])
        if @rating.save
          flash[:success] = "Rating successful"
        else
          flash[:error] = "Rating could not be saved"
        end
      end
      redirect_to trade_history_path(@author)
    end
end
