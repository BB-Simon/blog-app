class PostsController < ApplicationController
  def index
    @user = User.includes(post: [:author, { comment: [:author] }]).find(params[:user_id])
  end

  def show
    @post = Post.where(author_id: params[:user_id], id: params[:post_id]).first
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_param)
    @post.comments_counter = 0
    @post.likes_counter = 0
    @post.author_id = current_user.id
    # @post.author_id = params[:user_id]

    if @post.save
      redirect_to posts_path(current_user), notice: 'Post created successfully'
    else
      render new, status: :unprocessable_entity
    end
  end

  private

  def post_param
    params.require(:post).permit(:title, :text)
  end
end
