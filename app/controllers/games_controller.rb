class GamesController < ApplicationController

   def index
      @q = Game.ransack(params[:q])
      @games = @q.result.includes(:tag).order(:title)
      @tags = Tag.all.order(:name)
      render :index
   end

   def search
      @games = Game.where('title ILIKE ?', "%#{params[:title_search]}%") # search query for title passing search_field text
      params[:title_search]
      respond_to do |format|
         format.turbo_stream do
            render turbo_stream: turbo_stream.update("search_results",
               partial: "games/search_results", locals: {games: @games})#params[:title_search])
         end
      end
   end
end
