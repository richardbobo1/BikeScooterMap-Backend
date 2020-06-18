class RoutesController < ApplicationController
  def index
    routes = Route.all 
    render json: routes

  end

  def show
    route = Route.where(id: params[:id])
    render json: route.as_json(:include => [:reviews])
  end

  def create
    route = Route.create(bikeroute_params)
    render json: route
  end 



  def update
    route = Route.find(params[:id])
    route.update(bikeroute_params)
    render json: route
  end 


  def destroy
    route = Route.find_by(id: params[:id])
    route.destroy
    render json: route 
  end 


  private 


  def bikeroute_params
    params.require(:route).permit(:name, :length, :surface, :short_description, :difficulty, :tips, :google_map, :image_url)
  end




end
