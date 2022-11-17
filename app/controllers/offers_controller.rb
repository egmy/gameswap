class OffersController < ApplicationController
  # before_action :authenticate_user!, except: [:games_index]
  # before_action :require_permission, except: [:games_index, :new]

  # def require_permission
  #   if Offer.find(params[:id]).creator != current_user
  #     flash[:error] = "You do not have permission to do that"
  #     redirect_to game_path(Listing.find(params[:listing_id]).game_id)
  #   end
  # end

  # disallow rendering this page if it listing_id doesn't exist/wasn't accessed via link on offers/new.html.erb
  def games_index # used for WF06, 'Choose from a list' possibly move route, action to another controller
      @games = Game.order(:title)
      render :games_index
  end

  def new
    @listing = Listing.find(params[:listing_id])
    @offer = Offer.new
    render :new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    #@game_id = Game.where(title: params[:title]).ids
    @offer = Offer.new(params.require(:offer).permit(:description, :condition, :listing_id, :game_id => Game.where(title: :title)))#, :listing_id)) # last 2 are placeholders
    #@offer = current_user.offers.build(params.require(:offer).permit(:title, :description, :condition, :listing_id, @listing.game_id))
    if @offer.save
      flash[:success] = "New offer successfully created"
      redirect_to game_path(@listing.game_id)
    else
      flash.now[:error] = "An error occurred during offer creation"
      @offer.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end
end

#  id          :bigint           not null, primary key
#  accepted    :boolean
#  condition   :string
#  description :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint
#  listing_id  :bigint
#  user_id     :bigint
