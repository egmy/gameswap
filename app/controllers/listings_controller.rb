class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
    def index
        @game = Game.find(params[:game_id])
        @listings = @game.listings
        render :index
    end



      def new
        @game = Game.find(params[:game_id]) 
        @listing = Listing.new
        render :new
      end

      def create
        @game = Game.find(params[:game_id])
        @listing= @game.listings.build(params.require(:listing).permit(:condition, :description, :user_id))
        @listing.user=current_user
        if @listing.save!
          flash[:success] = "Listing saved successfully"
          redirect_to game_url(@game)
        else
          flash.now[:error] = "Listing could not be saved"
          render :new, status: :unprocessable_entity
        end
      end
end
