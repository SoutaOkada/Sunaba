class Public::GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @post = Post.new
    @posts = Post.where(game_id: @game.id).order(created_at: :DESC)
  end
end
