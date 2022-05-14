class Admin::GamesController < ApplicationController
  def index
    @game = Game.new
    @games = Game.all
  end

  def new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to admin_games_path
  end

  def show
    @game = Game.find(params[:id])
    @game_links = GameLink.where(game_id: (params[:id]))
    @game_link = GameLink.new
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
