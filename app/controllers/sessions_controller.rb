class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_show_path(@user)
    else
      redirect_to :back
    end
  end

  def new
    @user = User.new
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
