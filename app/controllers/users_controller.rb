class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users.as_json(:include => [:favorite_routes])
  end

  # def show
  # end
end
