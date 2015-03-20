class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to "new"
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.update(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_digest )
  end
end
