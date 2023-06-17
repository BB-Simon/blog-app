class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.new(author: current_user, **comment_param)
    if @comment.save
      redirect_to posts_path(current_user), notice: 'Comment added successfully'
    else
      redirect_to posts_path(current_user), status: :unprocessable_entity
    end
  end

  private

  def comment_param
    params.require(:comment).permit(:text)
  end
end
