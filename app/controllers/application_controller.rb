class ApplicationController < ActionController::API


    def secret_key
      # ENV['secret_key']
      "h3llo"
    end

    #given a payload {user_id: ?} => token
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end

    #given a token => payload
    def decode(token)
        JWT.decode(token,  "h3llo", true, {algorithm: "HS256"})[0]
    end


  #   before_action :authorized

    
  # def encode_token(payload)
  #   # should store secret in env variable
  #   JWT.encode(payload, 'my_s3cr3t')
  # end
 
  # def auth_header
  #   # { Authorization: 'Bearer <token>' }
  #   request.headers['Authorization']
  # end
 
  # def decoded_token
  #   if auth_header
  #     token = auth_header.split(' ')[1]
  #     # header: { 'Authorization': 'Bearer <token>' }
  #     begin
  #       JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
  #     rescue JWT::DecodeError
  #       nil
  #     end
  #   end
  # end
 
  # def current_user
  #   if decoded_token
  #     user_id = decoded_token[0]['user_id']
  #     @user = User.find_by(id: user_id)
  #   end
  # end
 
  # def logged_in?
  #   !!current_user
  # end
 
  # def authorized
  #   render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  # end

end
