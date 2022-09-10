class Public::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post.id)
    else
      redirect_to request.referer
    end

  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.update(comment_params)
      redirect_to post_path(@comment.post.id)
    else
      redirect_to request.referer
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :text, :is_active)
  end

end
