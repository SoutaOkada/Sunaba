class Admin::CommentsController < ApplicationController
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:is_active)
  end
end
