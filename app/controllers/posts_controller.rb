class PostsController < ApplicationController

  def index

  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def create
    @post = Post.new(post_params)
    user = User.find(params[:user_id])
    @post.user = user
    if @post.valid?
      @post.save
      redirect_to user_path(params[:user_id])
    else
      render :new
    end
  end

  def show

  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :user_id)
  end

end
