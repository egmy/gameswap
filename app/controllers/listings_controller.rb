class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
    def index
      @game = Game.find(params[:game_id])
      @listings = @game.listings
      render :index
    end

    def home
      @owner= User.find(params[:profile_id])
      @listings = @owner.listings
      count=0
      @listings.each do |listing|
      listing.offers.each do |offer|
        if offer.status="accepted"
          count=count+1
        end
      end
    end
      @count=count
      render :home
    end


    def new
      @game = Game.find(params[:game_id]) 
      @listing = Listing.new
      render :new
    end


    def create
      @game = Game.find(params[:game_id])
      @listing= @game.listings.build(params.require(:listing).permit(:condition, :description))
      @listing.user=current_user
      @listing.status="active"
        if @listing.save!
          flash[:success] = "Listing saved successfully"
          redirect_to game_url(@game)
      else
          flash.now[:error] = "Listing could not be saved"
          render :new, status: :unprocessable_entity
        end
    end

    def edit
      @owner= current_user
      @listing = @owner.listings.find(params[:id])
      render :edit
    end

    def show
      @owner=User.find(params[:profile_id])
      @listing = Listing.find(params[:id])
      render :show
    end

    def listing_offers
      @user=User.find(params[:profile_id])
      @listing = Listing.find(params[:id])
      @offers=@listing.offers
      render :listing_offers
    end 

    def accept_decline
      @user=User.find(params[:profile_id])
      @listing = Listing.find(params[:listing_id])
      @offers=@listing.offers
      @offer=@listing.offers.find(params[:id])

      if params[:status]=="Accept"
        @listing.update!(status:"inactive")
        @offers.each do |offer|
          offer.update!(status: "declined")
        end
        @offer.update!(status:"accepted")
        flash[:success] = "Offer successfully accepted"
        redirect_to my_listings_path(@user)
      elsif params[:status]=="Decline"
        @offer.update!(status:"declined")
        flash[:success] = "Offer successfully declined"
        redirect_to listing_offers_path(@user, @listing)
      end 
    end

    def update
      @owner = current_user
      @listing= @owner.listings.find(params[:id])
      if @listing.update(params.require(:listing).permit(:condition, :description))
        flash[:success] = "Listing updated successfully"
        redirect_to my_listings_path(@owner)
      else
        flash.now[:error] = "Listing could not be updated"
        render :edit, status: :unprocessable_entity
      end
    end

    
    def destroy
      @owner = User.find(params[:profile_id])
      @listing= @owner.listings.find(params[:id])
      @listing.destroy
      flash[:success] = "Listing deleted successfully"
      redirect_to my_listings_path(@owner), status: :see_other
    end

end
