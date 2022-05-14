class Admin::GameLinksController < ApplicationController
  def show
  end

  def create
    @game_link = GameLink.new(game_link_params)
    @game_link.game_id = params[:game_id]
    @game_link.save
    # binding.pry
    redirect_to request.referer
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
