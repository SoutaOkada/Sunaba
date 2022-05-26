class Public::HomesController < ApplicationController
  def top
    @posts = Post.where(is_active: true).limit(13).order(created_at: :DESC)
    @games = Game.where(is_active: true).limit(30).order(created_at: :DESC)

    if user_signed_in?
      @user_posts = Post.where(user_id: [current_user.following_ids], is_active: true).limit(6).order(created_at: :DESC)
      @game_posts = Post.where(game_id: [current_user.game_ids], is_active: true).limit(6).order(created_at: :DESC)
    end
  end
end
