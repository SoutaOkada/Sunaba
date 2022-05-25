class Public::GamesController < ApplicationController
  def index
    @games = Game.all
    @follow_game = FollowGame.new
    @following_game = FollowGame.find_by(user_id: current_user, game_id: @following_game_id)
  end

  def show
    @game = Game.find(params[:id])
    @post = Post.new
    @posts = Post.where(game_id: @game.id, is_active: true).order(created_at: :DESC)
    @follow_game = FollowGame.new
    @following_game = FollowGame.find_by(user_id: current_user, game_id: @following_game_id)
  end

  private

  def follow_game_params
    params.require(:follow_game).permit(:game_id, :user_id)
  end
end
