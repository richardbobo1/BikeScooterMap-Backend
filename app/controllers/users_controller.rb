class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users.as_json(:include => [:favorite_routes, :complete_routes]) 
    
    # [:favorite_routes, :complete_rotues])
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json(:include => [:favorite_routes, :complete_routes, :journals, :trips] )
  end


  def create
    user = User.create(user_params)
    user.update(password: params[:password])
    payload = {user_id: user.id}
    token = encode(payload)
    new_hash = {}
    new_hash['user_data'] = user
    new_hash["token"] = token
    render json: new_hash
end

def decode_token
    token = request.headers["Authenticate"]
    user = User.find(decode(token)["user_id"])
    render json: user
end

private 

def user_params
  params.require(:user).permit(:username, :email, :password)
end


end
