class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.like.new(author: current_user)
    if @like.save
      redirect_to posts_path(current_user)
    else
      redirect_to posts_path(current_user), status: :unprocessable_entity
    end
  end
end
