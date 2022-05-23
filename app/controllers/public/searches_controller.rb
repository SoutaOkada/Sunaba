class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word]).where(is_active: true)
    elsif @range == "Game"
      @games = Game.looks(params[:search], params[:word]).where(is_active: true)
    end

  end

end
