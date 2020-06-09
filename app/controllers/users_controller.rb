class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users.as_json(:include => [:favorite_routes])
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json(:include => [:favorite_routes] )
  end




end
