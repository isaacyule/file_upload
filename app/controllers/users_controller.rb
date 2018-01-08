class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  def update

  end

  def edit

  end

  def show

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end

end
