class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def other_user
  end

  def edit
  end

  def update
  end

  def confirm
  end

  def withdrawal
  end
end
