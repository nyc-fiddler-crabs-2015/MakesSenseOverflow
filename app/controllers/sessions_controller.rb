class SessionsController < ApplicationController
 skip_before_filter :ensure_current_user

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/questions/index"
    else
      redirect_to "/new"
    end
  end

  def new
    @user = User.new
  end

  def logout
    session[:user_id] = nil
    redirect_to"/"
  end

end
