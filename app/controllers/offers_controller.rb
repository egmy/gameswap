class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:games_index]
  before_action :require_permission, except: [:games_index, :new, :index, :destroy]

  def require_permission
    @listing = Listing.find(params[:listing_id]) # do not allow Listing owners to make offers on their own listings
    if @listing.user == current_user # user, not owner
      flash[:error] = "You do not have permission to do that"
      redirect_to game_path(Listing.find(params[:listing_id]).game_id)
    end
  end

  def index
    @owner = User.find(params[:profile_id])
    @offers = @owner.offers
    render :index
  end

  # disallow rendering this page if it listing_id doesn't exist/wasn't accessed via link on offers/new.html.erb
  def games_index # used for WF06, 'Choose from a list' possibly move route, action to another controller
      @games = Game.order(:title)
      render :games_index
  end

  def new
    @listing = Listing.find(params[:listing_id])
    if params[:game_id]
      @offer = Offer.new(:game_id => params[:game_id])
    else
      @offer = Offer.new
    end
    @user = current_user

    render :new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @game = Game.where(title: params[:title])[0] # must use first index because .where() returns an array of all matching games; there should be only one
    @offer = current_user.offers.build(params.require(:offer).permit(:condition, :description)) # tried permitting :title here, also assigning @game_id => Game.where(params.permit[:title]), and many other variations
    if @game != nil # @game, therefore game_id must exist in order to save it; if this fails, @offer.save will fail and flash an error
      @offer.game_id = @game.id
    end
    @offer.listing_id = @listing.id
    @offer.status = "active" # required
    # note that accepted attribute is initially nil
    if @offer.save
      flash[:success] = "Offer successfully created"
      redirect_to games_path()
    else
      flash.now[:error] = "Unable to save new offer"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @listing = Listing.find(params[:listing_id])
    @offer = Offer.find(params[:id])
    @offer.destroy
    flash[:success] = "Offer successfully canceled"
    redirect_to my_offers_path(current_user), status: :see_other
  end
end
