class Public::PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      redirect_to request.referer
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post.is_active == false
      redirect_to posts_deleted_path
    end
    @comment = Comment.new
    @comments = Comment.where(post_id: @post.id).order(created_at: :DESC)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to game_path(@post.game_id)
  end

  private

  def post_params
    params.require(:post).permit(:game_id, :user_id, :title, :post_text, :is_active)
  end

end