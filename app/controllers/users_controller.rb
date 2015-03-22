class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = user.id
      redirect_to user_show_path(@user)
    else
      redirect_to :back
    end
  end

  def edit
    if @user.id == session[:user_id]
      render :edit
    else
      redirect_to :root
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.update_attributes(user_params)
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_digest )
  end
end
