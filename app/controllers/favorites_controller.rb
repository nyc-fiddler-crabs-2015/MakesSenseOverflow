class FavoritesController < ApplicationController

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    favorite = Favorite.find(params[:id])
    favorite.update(favorite_params)
    redirect_to user(session[:user_id])
  end

private

  def favorite_parms
    params.require(:favorite).permit(:user_id, :question_id)
  end

end
