class UsersController < ApplicationController

  def index
    @session_user = check_session
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to "new"
    end
  end

    def show
      @session_user = check_session
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(session[:user_id])
      @user.update_attributes(user_params)
      redirect_to @user
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_digest )
    end
  end
