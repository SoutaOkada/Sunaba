class Admin::GamesController < ApplicationController
  def index
    @game = Game.new
  end

  def new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to admin_games_path
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:game_title)
  end
end
