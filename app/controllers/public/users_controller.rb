class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    if @user.is_active == false
      redirect_to users_withdrawn_path
    end
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
    @user = current_user
    @user.update(is_active: false)
    reset_session
    redirect_to root_path
  end

  def withdrawn
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :gender, :open_gender, :nickname, :self_intro, \
      :image)
  end
end
