class Public::HomesController < ApplicationController
  def top
    @posts = Post.where(is_active: true)
    @games = Game.where(is_active: true)

    if user_signed_in?
      @user_posts = Post.where(user_id: [current_user.following_ids], is_active: true).order(created_at: :DESC)
      @game_posts = Post.where(game_id: [current_user.game_ids]).order(created_at: :DESC)
    end
  end
end
