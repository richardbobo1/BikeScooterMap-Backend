class FavoriteRoutesController < ApplicationController
  def index
    favorites = FavoriteRoute.all 
    render json: favorites.as_json(:include => [:route])
  end

  def show 
    favorites = FavoriteRoute.where(user_id: params[:id])
    render json: favorites.as_json(:include => [:route])
  end 

  
  def create 
    favorite = FavoriteRoute.create(fav_params)
    render json: favorite.as_json(:include => [:route])
  end 

  def destroy
    favorite = FavoriteRoute.find_by(id: params[:id])
    favorite.destroy
    render json: favorite 
  end 


  private 
  
  def fav_params 
    params.require(:favorite_route).permit(:user_id,:route_id, :favorite)
  end 

end
