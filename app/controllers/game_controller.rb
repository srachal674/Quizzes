class GameController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @games = Game.all 
  end

  def new 
    @game = Game.new
  end

  def create 
     Games.create(games_params)
     redirect_to_root_path 
  end

  private

  def games_params
    params.require(:game).permit(:name, :description)
  end
end