class Admin::GameLinksController < ApplicationController
  def show
  end

  def create
    @game_link = GameLink.new(game_link_params)
    @game_link.game_id = params[:game_id]
    @game_link.save
    redirect_to request.referer
  end

  def edit
    @game_link = GameLink.find(params[:id])
  end

  def update
    @game_link = GameLink.find(params[:id])
    @game_link.update(game_link_params)
    redirect_to admin_game_path(@game_link.game_id)
  end

  def destroy
    @game_link = GameLink.find(params[:id])
    @game_link.destroy
    redirect_to admin_game_path(@game_link.game_id)
  end

  private

  def game_link_params
    params.require(:game_link).permit(:link_title, :link)
  end
end
