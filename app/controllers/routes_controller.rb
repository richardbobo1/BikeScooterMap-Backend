class RoutesController < ApplicationController
  def index
    routes = Route.all 
    render json: routes

  end

  # def show
  # end

  def create
  end


  def create
    route = Route.create(bikeroute_params)
    render json: route
  end 


  private 


  def bikeroute_params
    params.require(:route).permit(:name, :distance, :surface, :short_description, :difficulty, :tips, :google_map, :image_url)
  end




end
