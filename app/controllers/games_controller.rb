class GamesController < ApplicationController

   def index
      @q = Game.ransack(params[:q])
      @games = @q.result.includes(:tag).order(:title)
      @tags = Tag.all.order(:name)
      render :index
   end


end
