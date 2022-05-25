class Admin::PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: (params[:id]))
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to request.referer
  end

  private

  def post_params
    params.require(:post).permit(:is_active)
  end
end
