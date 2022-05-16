class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def other_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(params[:id])
  end

  def confirm
  end

  def withdrawal
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :gender, :open_gender, :nickname, :self_intro, \
      :image)
  end
end
