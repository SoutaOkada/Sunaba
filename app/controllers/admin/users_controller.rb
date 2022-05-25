class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: (params[:id]))
    @follows = Relationship.where(user_id: @user.id)
    @followers = Relationship.where(follow_id: @user.id)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to request.referer
  end

  private

  def user_params
    params.require(:user).permit(:is_active)
  end
end
