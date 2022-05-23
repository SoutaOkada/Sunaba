class Admin::SearchesController < ApplicationController
  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    elsif @range == "Game"
      @games = Game.looks(params[:search], params[:word])
    end
  end

end
