class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      redirect_to :back
    end
  end

  def new
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
