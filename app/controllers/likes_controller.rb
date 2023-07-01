class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.like.new(author: current_user)
    if @like.save
      redirect_to posts_path(@post.author)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
