class UsersController < ApplicationController
  def index
    @users = User.all
    puts @users
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = @user.top_3_posts
  end
end
