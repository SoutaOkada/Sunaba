class Admin::PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def update
  end
end
