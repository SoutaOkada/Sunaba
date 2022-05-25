class Public::FollowGamesController < ApplicationController
  def create
    @follow_game = FollowGame.new(follow_game_params)
    @follow_game.save
    redirect_to request.referer
  end

  def destroy
    @follow_game = FollowGame.find_by(user_id: current_user.id, game_id: params[:id])
    @follow_game.destroy
    redirect_to request.referer
  end

  private

  def follow_game_params
    params.require(:follow_game).permit(:game_id, :user_id)
  end
end
