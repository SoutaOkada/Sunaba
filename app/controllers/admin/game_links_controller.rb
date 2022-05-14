class Admin::GameLinksController < ApplicationController
  def show
  end

  def create
    @game_link = GameLink.new(game_link_params)
    @game_link.game = params[:id]
    @game_link.save
    redirect_to admin_game_path(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def game_link_params
    params.require(:game_link).permit(:link_title, :link)
  end
end
