class GamesController < ApplicationController
   def index
    @games = Game.order(:title)
    @tags = Tag.all
    render :index
   end


end
