class GamesController < ApplicationController

   def index
      @q = Game.ransack(params[:q])
      @games = @q.result.includes(:tag, :listings).order(:title)
      @tags = Tag.all.order(:name)
      render :index
   end

   def search
      @games = Game.where('title ILIKE ?', "%#{params[:title_search]}%") # search query for title passing search_field text
      @listing = params[:listing_id]
      params[:title_search]
      respond_to do |format|
         format.turbo_stream do
            render turbo_stream: turbo_stream.update("search_results",
               partial: "games/search_results", locals: {games: @games, listing: @listing}) # partial view "_search_results.html.erb"
         end
      end
   end
end
