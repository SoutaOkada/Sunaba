class Public::GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @post = Post.new
    @posts = Post.where(game_id: @game.id, is_active: true).order(created_at: :DESC)
  end
end
