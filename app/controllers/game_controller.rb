class GameController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @game = Games.all 
  end

  def new 
    @game = Games.new
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