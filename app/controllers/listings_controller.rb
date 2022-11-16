class ListingsController < ApplicationController
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
end
