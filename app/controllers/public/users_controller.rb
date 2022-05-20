class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id, is_active: true).order(created_at: :DESC)
    if @user.is_active == false
      redirect_to users_withdrawn_path
    end
    @follows = Relationship.where(user_id: @user.id)
    @followers = Relationship.where(follow_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to edit_user_path(current_user.id)
    end
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
