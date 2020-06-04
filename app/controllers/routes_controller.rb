class RoutesController < ApplicationController
  def index
    routes = Route.all 
    render json: routes

  end

  # def show
  # end

  # def create
  # end
end
