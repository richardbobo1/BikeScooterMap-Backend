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
    render json: favorite, include: [:route]
  end 

  private 
  
  def fav_params 
    params.require(:favoriteroute).permit(:user_id,:route_id,:favorite)
  end 

end
