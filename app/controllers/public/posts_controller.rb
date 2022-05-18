class Public::PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:game_id, :user_id, :title, :post_text)
  end

end