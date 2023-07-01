class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.new(author: @post.author, **comment_params)
    if @comment.save
      redirect_to posts_path(@post.author), notice: 'Comment added successfully'
    else
      redirect_to posts_path(@post.author), status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
